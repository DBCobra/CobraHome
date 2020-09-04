# Cobra Home

This is the root directory of a (research) project, Cobra.
Cobra studies verifying [serializability](https://en.wikipedia.org/wiki/Serializability) of black-box databases.
It includes two components:

* [Cobra verifier](https://github.com/DBCobra/CobraVerifier): a piece of software that checks serializability of a set of transactions (called _history_)
* [Cobra bench](https://github.com/DBCobra/CobraBench): database clients that interact with a black-box database and generate histories

Prepare environment
---

### Step 0: install required packages

Cobra requires Java v1.8.0 (or higher). One needs to install the Java environment and update the following `JAVA_HOME` in the file `env.sh`:

    export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

Cobra verifier requires [CUDA](https://developer.nvidia.com/cuda-zone). One needs to install CUDA and update the following environment variable in the file `env.sh`:

    export CUDA_PATH="/usr/local/cuda"



### Step 1: create environment

Fetch Cobra components:

    $ git submodule update --init --recursive

Setup Cobra's environment variables:

    $ . ./env.sh

The above command sets several environment variables (for example, `$COBRA_HOME`) that Cobra components use. One needs to run this command every time before running Cobra.


Run Cobra
---


If you want to verify serializability of a history, see [Cobra verifier](https://github.com/DBCobra/CobraVerifier).

If you want to generate new histories, see [Cobra bench](https://github.com/DBCobra/CobraBench).
