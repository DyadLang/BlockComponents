```@raw html

      <div style="float: right;width: 20%;max-width: 10vw; margin-left: 20px">
      <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
    <style>
    text {
      transform-origin: center center;
    }
    </style><g transform="translate(0 0) scale(1.0) rotate(0)" transform-origin="center center"><svg xmlns="http://www.w3.org/2000/svg" id="a" width="1000" height="1000" viewBox="0 0 1000 1000"
><defs><style>.b {fill: none;}.b,.c {stroke: #b6b4cf;stroke-linejoin: round;stroke-width: 8px;}.c,.d {  fill: #fff;}.e {fill: #6e6ea1;}.e,.d {stroke-width: 0px;}</style>
  </defs><rect class="d" x="4" y="4" width="992" height="992" /><path class="e" d="M992,8v984H8V8h984M1000,0H0v1000h1000V0h0Z" /><path class="b"
    d="M361.83,226.44c-62.23-3.99-115.91,43.22-119.9,105.45-3.99,62.23,43.22,115.91,105.45,119.9,62.23,3.99,115.91-43.22,119.9-105.45,3.99-62.23-43.22-115.91-105.45-119.9ZM413.76,342.91c-2.09,32.67-30.28,57.46-62.95,55.36-32.67-2.1-57.46-30.28-55.36-62.95,2.09-32.67,30.28-57.46,62.95-55.36,32.67,2.09,57.45,30.28,55.36,62.95Z"
  /><circle class="b" cx="353.85" cy="682.11" r="80.62" /><circle class="b" cx="652.79" cy="644.36" r="52.47" /><polyline class="b" points="410.2 624.82 698.58 340.68 464.78 340.68" /><line class="b" x1="617.63" y1="609.81" x2="432.03" y2="420.13" /><circle class="c" cx="696.98" cy="340.44" r="54.47" />
</svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">$(instance)</text>
    </svg>
      <span style="width: 100%; text-align: center; display:inline-block"><code>Interpolation</code> Icon</span>
      </div>

```
# `Interpolation`

## Usage

`Interpolation(interpolator=dataset_interpolation(interpolation_type, dataset))`

## Parameters:

| Name         | Description                         | Units  |   Default value |
| ------------ | ----------------------------------- | ------ | --------------- |
| `dataset`         |                          | --  |    |
| `interpolation_type`         |                          | --  |    |
| `interpolator`         |                          | --  |   dataset_interpolation(interpolation_type, dataset) |

## Connectors

 * `u` - This connector represents a real signal as an input to a component ([`RealInput`](@ref))
 * `y` - This connector represents a real signal as an output from a component ([`RealOutput`](@ref))



## Behavior

```@example behavior
using BlockComponents #hide
using BlockComponents: square #hide
using ModelingToolkit #hide
using DyadData #hide
using DataInterpolations #hide
dataset::DyadDataset = DyadDataset(hcat(0:0.1:1, square(0:0.1:1)), dependent_vars=["data"], independent_var="ts")
@named sys = Interpolation(interpolation_type=LinearInterpolation, dataset=dataset) #hide
full_equations(sys) #hide
```

## Source
```dyad
component Interpolation
  u = RealInput()
  y = RealOutput()
  structural parameter dataset::DyadDataset
  structural parameter interpolation_type::Real
  parameter interpolator::RealInterpolator = dataset_interpolation(interpolation_type, dataset)
relations
  y = interpolator(u)
end
```

```@raw html

<details>
<summary>Flattened Source</summary>
<pre>
component Interpolation
  u = RealInput()
  y = RealOutput()
  structural parameter dataset::DyadDataset
  structural parameter interpolation_type::Real
  parameter interpolator::RealInterpolator = dataset_interpolation(interpolation_type, dataset)
relations
  y = interpolator(u)
metadata {}
end
</pre>
</details>

```
```@raw html

<br>

```

## Test Cases


## Related

- Examples
- Experiments
- Analyses
- Tests
  - [`InterpolationFileTest`](#)
  - [`InterpolationJuliaHubDatasetTest`](#)