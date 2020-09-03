# Cobra Home

This is the root directory of a (research) project, Cobra.
Cobra studies verifying [serializability](https://en.wikipedia.org/wiki/Serializability) of black-box databases.
It includes two components:

* [Cobra verifier](https://github.com/DBCobra/CobraVerifier): a piece of software that checks serializability of a transaction history
* [Cobra bench](https://github.com/DBCobra/CobraBench): database clients that generate transactions to a black-box database

Prepare environment
---

### Step 0: install required packages

Cobra requires Java v1.8.0 (or higher). One needs to install the Java environment and update the following `JAVA_HOME` in the file `env.sh` to reflect JAVA path:

    export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

Cobra verifier requires [CUDA](https://developer.nvidia.com/cuda-zone). One needs to install CUDA and update the following environment variable in the file `env.sh`:

    export CUDA_PATH="/usr/local/cuda"



### Step 1: create environment

Fetch Cobra's components into this root folder:

    $ git submodule init
    $ git submodule update

Update Cobra's environment variables:

    $ . ./env.sh

The above command setups several environment variables (for example, `$COBRA_HOME`) that Cobra components use. One needs to run this command every time before running Cobra.


Run Cobra
---


If you want to verify serializability of a history, see [Cobra verifier](https://github.com/DBCobra/CobraVerifier).

If you want to generate new histories, see [Cobra bench](https://github.com/DBCobra/CobraBench).
