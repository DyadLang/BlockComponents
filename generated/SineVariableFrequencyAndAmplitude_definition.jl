### DO NOT EDIT THIS FILE
### This file is auto-generated by the Dyad command-line compiler.
### If you edit this code it is likely to get overwritten.
### Instead, update the Dyad source code and regenerate this file


"""
   SineVariableFrequencyAndAmplitude(; name, phi0, offset)

Sine voltage source with variable frequency and amplitude

To use, connect a signal source to amplitude and frequency,
and the component will output the resulting sine wave

## Parameters: 

| Name         | Description                         | Units  |   Default value |
| ------------ | ----------------------------------- | ------ | --------------- |
| `phi0`         | Initial phase of the sine wave                         | --  |   0 |
| `offset`         | Offset of the sine wave                         | --  |   0 |

## Connectors

 * `amplitude` - This connector represents a real signal as an input to a component ([`RealInput`](@ref))
 * `frequency` - This connector represents a real signal as an input to a component ([`RealInput`](@ref))
 * `y` - This connector represents a real signal as an output from a component ([`RealOutput`](@ref))

## Variables

| Name         | Description                         | Units  | 
| ------------ | ----------------------------------- | ------ | 
| `phi`         | Phase of the sine wave                         | rad  | 
"""
@component function SineVariableFrequencyAndAmplitude(; name, phi0=0, offset=0)

  ### Symbolic Parameters
  __params = Any[]
  append!(__params, @parameters (phi0::Float64 = phi0), [description = "Initial phase of the sine wave"])
  append!(__params, @parameters (offset::Float64 = offset), [description = "Offset of the sine wave"])

  ### Variables
  __vars = Any[]
  append!(__vars, @variables amplitude(t), [input = true])
  append!(__vars, @variables frequency(t), [input = true])
  append!(__vars, @variables y(t), [output = true])
  append!(__vars, @variables (phi(t)), [description = "Phase of the sine wave"])

  ### Constants
  __constants = Any[]

  ### Components
  __systems = ODESystem[]

  ### Defaults
  __defaults = Dict()
  __defaults[phi] = (phi0)

  ### Initialization Equations
  __initialization_eqs = []

  ### Equations
  __eqs = Equation[]
  push!(__eqs, D(phi) ~ 2 * π * frequency)
  push!(__eqs, y ~ offset + amplitude * sin(phi))

  # Return completely constructed ODESystem
  return ODESystem(__eqs, t, __vars, __params; systems=__systems, defaults=__defaults, name, initialization_eqs=__initialization_eqs)
end
export SineVariableFrequencyAndAmplitude

Base.show(io::IO, a::MIME"image/svg+xml", t::typeof(SineVariableFrequencyAndAmplitude)) = print(io,
  """<div style="height: 100%; width: 100%; background-color: white"><div style="margin: auto; height: 500px; width: 500px; padding: 200px"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1000 1000"
    overflow="visible" shape-rendering="geometricPrecision" text-rendering="geometricPrecision">
      <defs>
        <filter id='red-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#ff0000" flood-opacity="0.5"/></filter>
        <filter id='green-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#00ff00" flood-opacity="0.5"/></filter>
        <filter id='blue-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="100" flood-color="#0000ff" flood-opacity="0.5"/></filter>
        <filter id='drop-shadow' color-interpolation-filters="sRGB"><feDropShadow dx="0" dy="0" stdDeviation="40" flood-opacity="0.5"/></filter>
      </defs>
    <g  transform="translate(-500 -200) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(0,0,127)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
<g  transform="translate(-500 200) scale(0.1 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(0,0,127)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
<g  transform="translate(350 0) scale(-0.2 0.1) rotate(0)" transform-origin="center center"><svg baseProfile="full" height="210" version="1.1" viewBox="0 0 210 210" width="210" xmlns="http://www.w3.org/2000/svg" xmlns:ev="http://www.w3.org/2001/xml-events" xmlns:xlink="http://www.w3.org/1999/xlink"><defs /><polygon fill="rgb(220,220,247)" fill-opacity="1" points="5.0,5.0 205.0,105.0 5.0,205.0" stroke="rgb(0,0,127)" stroke-width="0.25mm" /><defs /></svg></g>
      </svg></div></div>""")
