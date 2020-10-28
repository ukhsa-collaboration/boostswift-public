# BoostSwift

A package to make functions from [boost](https://www.boost.org) available to Swift.

Currently this package exports [`gamma_p_inv`](https://www.boost.org/doc/libs/1_74_0/libs/math/doc/html/math_toolkit/sf_gamma/igamma_inv.html)

## Adding / Updating Boost headers

The [BCP tool](https://www.boost.org/doc/libs/1_74_0/tools/bcp/doc/html/index.html) can be used to extract a subset of Boost (i.e the part relevant to the library).  The [Getting started documentation](https://www.boost.org/doc/libs/1_74_0/more/getting_started/unix-variants.html) is also useful.

Here are the steps I followed to make `gamma_p_inv` available.

1. Run `./bootstrap.sh` in the root of the Boost distribution
2. Run `./b2 headers` in the root of the Boost distribution
3. Run `../../b2 -j2 release dist-bin` in the `tools/bcp` directory
3. Run `./dist/bin/bcp boost/math/special_functions/detail/igamma_inverse.hpp <outputdir>` from the root of the Boost distribution. replace `<outputdir>` with the path where you want the files to be placed.
