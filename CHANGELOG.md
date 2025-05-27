# Changelog

## [2.2.1](https://github.com/JuliaComputing/BlockComponents/compare/v2.2.0...v2.2.1) (2025-05-27)


### Bug Fixes

* use permalinks of  MTKStdlib code & license ([5050e5a](https://github.com/JuliaComputing/BlockComponents/commit/5050e5a4b00b8d641d985af7d0a721d3b3ac84e8))

# [2.2.0](https://github.com/JuliaComputing/BlockComponents/compare/v2.1.0...v2.2.0) (2025-05-23)


### Bug Fixes

* explicitly declare interpolator as a final param ([72a78d3](https://github.com/JuliaComputing/BlockComponents/commit/72a78d38921b959417fb96717a426940440faa82))
* fix dataset_interpolation and update to DyadData ([fea7128](https://github.com/JuliaComputing/BlockComponents/commit/fea7128d5c14d033e3bc79e394545428b8829723))
* flatten out SISO in ParamInterp model ([e6c86ca](https://github.com/JuliaComputing/BlockComponents/commit/e6c86cad068ab9f5246e6af58f4796ef9ffcd5a4))


### Features

* add `AbstractDataset` and its concrete subtypes ([3f12596](https://github.com/JuliaComputing/BlockComponents/commit/3f1259696d793b23387d292d8bcae1cf0ced00fc))
* add `Interpolation` ([2e40d11](https://github.com/JuliaComputing/BlockComponents/commit/2e40d110b6694e62910251fc2c26d02200d3afb9))
* add a new ParameterizedInterpolations method that accepts DyadDataset ([f6ff898](https://github.com/JuliaComputing/BlockComponents/commit/f6ff898c1d2da22b908d799475a060a245cacffd))
* add external `ParameterizedInterpolation` ([5354176](https://github.com/JuliaComputing/BlockComponents/commit/53541766226373b15317b14f2fdfe92b568170ad))
* **generated:** update code ([72dd8ae](https://github.com/JuliaComputing/BlockComponents/commit/72dd8ae68a09e2d04af05fa1bd0960f890a15125))

# [2.1.0](https://github.com/JuliaComputing/BlockComponents/compare/v2.0.0...v2.1.0) (2025-05-20)


### Features

* trigger a minor release ([f20eb3c](https://github.com/JuliaComputing/BlockComponents/commit/f20eb3ca646aea23c7b4cc9c4a2e994c55b3c833))

# [2.0.0](https://github.com/JuliaComputing/BlockComponents/compare/v1.1.3...v2.0.0) (2025-05-12)


### Bug Fixes

* **deps:** rename JuliaSimCore to DyadEcosystemDependencies ([9aaf89e](https://github.com/JuliaComputing/BlockComponents/commit/9aaf89e6d585ad9a049840ed5a95a1488386e405))
* restore metadata and asset URIs ([ce39a69](https://github.com/JuliaComputing/BlockComponents/commit/ce39a693ba2da2b625329f9f8dbcc89ffb4d9dab))

## [1.1.3](https://github.com/JuliaComputing/BlockComponents/compare/v1.1.2...v1.1.3) (2025-05-07)


### Bug Fixes

* **deps:** update JuliaSimCore to 0.6.1 ([cc11c1f](https://github.com/JuliaComputing/BlockComponents/commit/cc11c1f0e3b17225e14eddd2914a1ac7372c3ae0))

## [1.1.2](https://github.com/JuliaComputing/BlockComponents/compare/v1.1.1...v1.1.2) (2025-04-08)


### Bug Fixes

* **deps:** update JuliaSimCore to 0.5.1 ([1d28e97](https://github.com/JuliaComputing/BlockComponents/commit/1d28e97a53dcbf5e171b3146878c919db746a1b6))

## [1.1.1](https://github.com/JuliaComputing/BlockComponents/compare/v1.1.0...v1.1.1) (2025-03-18)


### Bug Fixes

* **deps:** update JuliaSimCore to 0.5.0 ([ec3344a](https://github.com/JuliaComputing/BlockComponents/commit/ec3344a5e207bfb98d82c2ec2f3ebd990ceacc76))

# [1.1.0](https://github.com/JuliaComputing/BlockComponents/compare/v1.0.3...v1.1.0) (2025-03-11)


### Bug Fixes

* add default values for LimPID ([ada0be3](https://github.com/JuliaComputing/BlockComponents/commit/ada0be3e1e1df778ca443cb5fff778203037d548))
* add schematics of LimPID and SingleVariableController ([fea2fd9](https://github.com/JuliaComputing/BlockComponents/commit/fea2fd9136b5c47bf2927bfdace1506923e7b8ea))
* rename parameters to match std notation ([ada0853](https://github.com/JuliaComputing/BlockComponents/commit/ada0853ffb017b0472e42d7ebeb043717069f678))
* update generated code to cache components ([6a68c0a](https://github.com/JuliaComputing/BlockComponents/commit/6a68c0a9801ee17aa85b58c70a869c68ee9f88dc))


### Features

* add `LimPID` ([32dfd77](https://github.com/JuliaComputing/BlockComponents/commit/32dfd776b273d262308f3f21c3d521064f9c8887))
* add `SingleVariableController` ([268d455](https://github.com/JuliaComputing/BlockComponents/commit/268d455d2e18173631102c3eb61bee1a3421598a))
* add second order Plant example component ([6fb28ab](https://github.com/JuliaComputing/BlockComponents/commit/6fb28abfc2b2b7ffaac724441fde52696dd418fe))
* **schematics:** add internal schematics of `LimPID` ([392af13](https://github.com/JuliaComputing/BlockComponents/commit/392af1364f768710c3c1c4347d00e9446f07f0f6))

## [1.0.3](https://github.com/JuliaComputing/BlockComponents/compare/v1.0.2...v1.0.3) (2025-03-11)


### Bug Fixes

* **deps:** update JuliaSimCore to 0.4.0 ([c852aa2](https://github.com/JuliaComputing/BlockComponents/commit/c852aa2b40aa37b8d027014606a2e163ba08ee82))

## [1.0.2](https://github.com/JuliaComputing/BlockComponents/compare/v1.0.1...v1.0.2) (2025-02-28)


### Bug Fixes

* trigger a patch release to update JuliaSimCore to 0.3.1 ([51d16fd](https://github.com/JuliaComputing/BlockComponents/commit/51d16fde7eefb410311952f089eaf4fb2b607b10))
* trigger a patch release to update JuliaSimCore to 0.3.1 ([e6fc435](https://github.com/JuliaComputing/BlockComponents/commit/e6fc435a1c9241b7d1af148d44e260df32c835df))

## [1.0.1](https://github.com/JuliaComputing/BlockComponents/compare/v1.0.0...v1.0.1) (2025-02-25)


### Bug Fixes

* fix file name ([304e19d](https://github.com/JuliaComputing/BlockComponents/commit/304e19d4ffbca2d8f47791bfc30ea8a130a0f413))
* use π instead of pi ([48b1fdf](https://github.com/JuliaComputing/BlockComponents/commit/48b1fdfe939fb1a72be5ca1175a9b03dbad06490))

# [1.0.0](https://github.com/JuliaComputing/BlockComponents/compare/v0.13.0...v1.0.0) (2025-02-10)


### Bug Fixes

* temporarily remove `assert` statements ([460b2ca](https://github.com/JuliaComputing/BlockComponents/commit/460b2cae1df93c95f7cc34023db480721e264baf))

# [0.13.0](https://github.com/JuliaComputing/BlockComponents/compare/v0.12.5...v0.13.0) (2025-02-10)


### Features

* add variable sine/cosine and their test ([5169dca](https://github.com/JuliaComputing/BlockComponents/commit/5169dca19d91dccf4b00ecc508abd86399b9dcdc))

## [0.12.5](https://github.com/JuliaComputing/BlockComponents/compare/v0.12.4...v0.12.5) (2025-02-07)


### Bug Fixes

* **icons:** fix cosine waveform ([6af2523](https://github.com/JuliaComputing/BlockComponents/commit/6af25230164752827367ff470989e20caee2e0af))

## [0.12.4](https://github.com/JuliaComputing/BlockComponents/compare/v0.12.3...v0.12.4) (2025-01-30)


### Bug Fixes

* update generated Limiter and SlewRateLimiter ([828ea6a](https://github.com/JuliaComputing/BlockComponents/commit/828ea6aa0a8cdb34154bf27adcb9e5b33fdf056b))

## [0.12.3](https://github.com/JuliaComputing/BlockComponents/compare/v0.12.2...v0.12.3) (2025-01-27)


### Bug Fixes

* update to latest parser and AST ([45c05e9](https://github.com/JuliaComputing/BlockComponents/commit/45c05e9b3e684b7855a8323ce14cc517fb153a86))

## [0.12.2](https://github.com/JuliaComputing/BlockComponents/compare/v0.12.1...v0.12.2) (2025-01-24)


### Bug Fixes

* trigger a patch release to include JuliaSimCore@0.2.0 ([2673766](https://github.com/JuliaComputing/BlockComponents/commit/2673766990b29803c7eb1b2aba4f49515948fa11))

## [0.12.1](https://github.com/JuliaComputing/BlockComponents/compare/v0.12.0...v0.12.1) (2025-01-23)


### Bug Fixes

* set relevant params of Limiter and SlewRateLimiter ([0d7f6d4](https://github.com/JuliaComputing/BlockComponents/commit/0d7f6d4874a3f5e63b782d837112e24250e3644f))

# [0.12.0](https://github.com/JuliaComputing/BlockComponents/compare/v0.11.2...v0.12.0) (2025-01-22)


### Bug Fixes

* generated code with jsml-kernel@0.1.31 ([dbcf684](https://github.com/JuliaComputing/BlockComponents/commit/dbcf6849f208d4e4ddb1ddce98a759782b5a9328))


### Features

* add `Limiter` ([587e441](https://github.com/JuliaComputing/BlockComponents/commit/587e441a75286bc4e67030d200e6edbcf737a885))
* add `SlewRateLimiter` ([28686eb](https://github.com/JuliaComputing/BlockComponents/commit/28686ebe083c5fa76d6df012e2e96f8630d359f7))
