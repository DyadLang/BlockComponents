### DO NOT EDIT THIS FILE
### This file is auto-generated by the Dyad command-line compiler.
### If you edit this code it is likely to get overwritten.
### Instead, update the Dyad source code and regenerate this file


"""
   Limiter(; name, y_max, y_min)

Within the specified upper and lower limits, input signal is passed as output
signal. Outside these limits, corresponding limits are passed as output.

## Parameters: 

| Name         | Description                         | Units  |   Default value |
| ------------ | ----------------------------------- | ------ | --------------- |
| `y_max`         | Maximum allowed input                         | --  |    |
| `y_min`         | Minimum allowed input                         | --  |   -y_max |

## Connectors

 * `u` - This connector represents a real signal as an input to a component ([`RealInput`](@ref))
 * `y` - This connector represents a real signal as an output from a component ([`RealOutput`](@ref))
"""
@component function Limiter(; name, y_max=nothing, y_min=-y_max)

  ### Symbolic Parameters
  __params = Any[]
  append!(__params, @parameters (y_max::Float64 = y_max), [description = "Maximum allowed input"])
  append!(__params, @parameters (y_min::Float64 = y_min), [description = "Minimum allowed input"])

  ### Variables
  __vars = Any[]
  append!(__vars, @variables u(t), [input = true])
  append!(__vars, @variables y(t), [output = true])

  ### Constants
  __constants = Any[]

  ### Components
  __systems = ODESystem[]

  ### Defaults
  __defaults = Dict()

  ### Initialization Equations
  __initialization_eqs = []

  ### Equations
  __eqs = Equation[]
  push!(__eqs, y ~ clamp(u, y_min, y_max))

  # Return completely constructed ODESystem
  return ODESystem(__eqs, t, __vars, __params; systems=__systems, defaults=__defaults, name, initialization_eqs=__initialization_eqs)
end
export Limiter

Base.show(io::IO, a::MIME"image/svg+xml", t::typeof(Limiter)) = print(io,
  """<div style="height: 100%; width: 100%; background-color: white"><div style="margin: auto; height: 500px; width: 500px; padding: 200px"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
      <defs>
        <filter id='red-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#ff0000" flood-opacity="0.5"/></filter>
        <filter id='green-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#00ff00" flood-opacity="0.5"/></filter>
        <filter id='blue-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#0000ff" flood-opacity="0.5"/></filter>
        <filter id='drop-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="40" flood-opacity="0.5"/></filter>
      </defs>
    <g  transform="translate(-500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(0,0,127)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
<g  transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(220,220,247)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
      </svg></div></div>""")
