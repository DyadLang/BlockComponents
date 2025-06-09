# BlockComponents

## Introduction

BlockComponents is a component library developed with [Dyad modeling language](help.juliahub.com/dyad).
This library provides a rich collection of pre-built, continuous-time, mathematical and signal block components.

## Usage

- [Install the Dyad language and VS Code extension.](https://help.juliahub.com/dyad/dev/installation)
- Add this package to the working environment via Julia's package manager. Execute the following code in Julia:

```julia
using Pkg
Pkg.add("BlockComponents")
```

## Examples

Demonstration of a signal adder with blocks in BlockComponents:
```dyad
component IntegratorSystem
  signal = BlockComponents.Constant(k=2)
  integrator = BlockComponents.Integrator()
relations
  connect(signal.y, integrator.u)
end
```

```julia
using BlockComponents
using DyadInterface
using ModelingToolkit
using Plots

@mtkbuild model = IntegratorSystem()
res = TransientAnalysis(; model, stop = 4)
plot(
  res, idxs = [model.signal.y, model.integrator.y],
  title = "Integrator System",
  labels = ["Constant Signal" "Integrator Output"]
)
```

![](https://github.com/user-attachments/assets/274c3892-b77b-4a89-8ded-4783b974c95c)


## Contributing

We welcome contributions to the BlockComponents library. See [CONTRIBUTING.md](./CONTRIBUTING.md) for details.

## License

This library is released under the BSD 3-Clause License. See the [LICENSE.md](./LICENSE.md) for more details.
