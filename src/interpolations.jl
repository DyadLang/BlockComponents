function dataset_interpolation(interpolation_type, dataset)
  df = build_dataframe(dataset)
  interpolation_type(df[!, only(dataset.dependent_vars)], df[!, dataset.independent_var])
end


# Source of the code: https://github.com/SciML/ModelingToolkitStandardLibrary.jl/blob/e3a049ed8857b5f79587ab2268e5fdb022870661/src/Blocks/sources.jl#L774-L872C4
# The license: https://github.com/SciML/ModelingToolkitStandardLibrary.jl/blob/e3a049ed8857b5f79587ab2268e5fdb022870661/LICENSE#L1-L21
#
# The arg. names and concerned docstrings are updated to suit this library.

"""
    CachedInterpolation

This callable struct caches the calls to an interpolation object via PreallocationTools.
"""
struct CachedInterpolation{T,I,U,X,C}
  interpolation_type::I
  prev_u::U
  prev_x::X
  cache::C

  function CachedInterpolation(interpolation_type, u, x, args)
    # we need to copy the inputs to avoid aliasing
    prev_u = DiffCache(copy(u))
    # Interpolation points can be a range, but we want to be able
    # to update the cache if needed (and setindex! is not defined on ranges)
    # with a view from MTKParameters, so we collect to get a vector
    prev_x = DiffCache(collect(copy(x)))
    cache = GeneralLazyBufferCache() do (u, x)
      interpolation_type(get_tmp(prev_u, u), get_tmp(prev_x, x), args...)
    end
    T = typeof(cache[(get_tmp(prev_u, u), get_tmp(prev_x, x))])
    I = typeof(interpolation_type)
    U = typeof(prev_u)
    X = typeof(prev_x)
    C = typeof(cache)

    new{T,I,U,X,C}(interpolation_type, prev_u, prev_x, cache)
  end
end

function (f::CachedInterpolation{T})(u, x, args) where {T}
  (; prev_u, prev_x, cache, interpolation_type) = f

  interp = @inbounds if (u, x) ≠ (get_tmp(prev_u, u), get_tmp(prev_x, x))
    get_tmp(prev_u, u) .= u
    get_tmp(prev_x, x) .= x
    cache.bufs[(u, x)] = interpolation_type(
      get_tmp(prev_u, u), get_tmp(prev_x, x), args...)
  else
    cache[(u, x)]
  end

  return interp
end

Base.nameof(::CachedInterpolation) = :CachedInterpolation

@register_symbolic (f::CachedInterpolation)(u::AbstractArray, x::AbstractArray, args::Tuple)

"""
    ParameterizedInterpolation(interp_type, dvalue, ivalue, args...; name, t = ModelingToolkit.t_nounits)

Represent function interpolation symbolically as a block component, with the interpolation data represented parametrically.
By default interpolation types from [`DataInterpolations.jl`](https://github.com/SciML/DataInterpolations.jl) are supported,
but in general any callable type that builds the interpolation object via `itp = interpolation_type(u, x, args...)` and calls
the interpolation with `itp(t)` should work. This does not need to represent an interpolation, it can be any type that satisfies
the interface, such as lookup tables.
# Arguments:
  - `interp_type`: the type of the interpolation. For `DataInterpolations`,
these would be any of [the available interpolations](https://github.com/SciML/DataInterpolations.jl?tab=readme-ov-file#available-interpolations),
such as `LinearInterpolation`, `ConstantInterpolation` or `CubicSpline`.
  - `dvalue`: dependent value - the data used for interpolation. For `DataInterpolations` this will be an `AbstractVector`
  - `ivalue`: independent value - the values that each data points correspond to, usually the times corresponding to each value in `u`.
  - `args`: any other arguments beeded to build the interpolation
# Keyword arguments:
  - `name`: the name of the component

# Parameters:
  - `data`: the symbolic representation of the data passed at construction time via `u`.
  - `ivar`: the symbolic representation of independent variable corresponding to the data passed at construction time via `x`.

# Connectors:
  - `u`: This connector represents a real signal as an input from a component ([`RealInput`](@ref))
  - `y`: This connector represents a real signal as an output from a component ([`RealOutput`](@ref))
"""
function ParameterizedInterpolation(; interpolation_type::T, dataset::DyadDataset, name) where {T}
  df = build_dataframe(dataset)
  ParameterizedInterpolation(interpolation_type, df[!, only(dataset.dependent_vars)], df[!, dataset.independent_var]; name)
end

function ParameterizedInterpolation(
  interp_type::T, dvalue::AbstractVector, ivalue::AbstractVector, args...;
  name) where {T}
  build_interpolation = CachedInterpolation(interp_type, dvalue, ivalue, args)

  @parameters data[1:length(dvalue)] = dvalue
  @parameters ivar[1:length(ivalue)] = ivalue
  @parameters interpolation_type::T = interp_type [tunable = false]
  @parameters (interpolator::interp_type)(..)::eltype(dvalue)

  vars = @variables begin
    u(t), [input = true]
    y(t), [output = true]
  end

  eqs = [y ~ interpolator(u)]

  ODESystem(eqs, ModelingToolkit.t_nounits, vars,
    [data, ivar, interpolation_type, interpolator];
    parameter_dependencies=[
      interpolator ~ build_interpolation(data, ivar, args)
    ],
    name)
end
