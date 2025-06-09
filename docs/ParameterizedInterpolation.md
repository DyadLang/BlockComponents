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
<g transform="translate(-500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(0,0,127)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">u</text>
<g transform="translate(500 0) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(220,220,247)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">y</text>
    <text x="500" y="1100" transform="rotate(0, 0, 600)" fill="black" font-size="200" font-weight="200" dominant-baseline="central" text-anchor="middle">$(instance)</text>
    </svg>
      <span style="width: 100%; text-align: center; display:inline-block"><code>ParameterizedInterpolation</code> Icon</span>
      </div>

```
# `ParameterizedInterpolation`

## Usage

`ParameterizedInterpolation()`



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
@named sys = ParameterizedInterpolation(interpolation_type=LinearInterpolation, dataset=dataset) #hide
full_equations(sys) #hide
```

## Source
```dyad
external component ParameterizedInterpolation
  u = RealInput() [{
    "Dyad": {
      "placement": {"icon": {"iconName": "input", "x1": -50, "y1": 450, "x2": 50, "y2": 550}}
    }
  }]
  y = RealOutput() [{
    "Dyad": {
      "placement": {"icon": {"iconName": "output", "x1": 950, "y1": 450, "x2": 1050, "y2": 550}}
    }
  }]
end
```

```@raw html

<details>
<summary>Flattened Source</summary>
<pre>
external component ParameterizedInterpolation
  u = RealInput() [{
    "Dyad": {
      "placement": {"icon": {"iconName": "input", "x1": -50, "y1": 450, "x2": 50, "y2": 550}}
    }
  }]
  y = RealOutput() [{
    "Dyad": {
      "placement": {"icon": {"iconName": "output", "x1": 950, "y1": 450, "x2": 1050, "y2": 550}}
    }
  }]
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