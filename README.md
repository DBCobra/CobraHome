# Cobra Home

This is the root directory of a research project, Cobra.
Cobra studies verifying [serializability](https://en.wikipedia.org/wiki/Serializability) of black-box databases.
It includes two components:

* [Cobra verifier](https://github.com/DBCobra/CobraVerifier): checks serializability of a set of transactions (called a _history_)
* [Cobra bench](https://github.com/DBCobra/CobraBench): database clients that interact with a black-box database and generate histories

Prepare environment
---

### Step 0: install required packages

Cobra requires Java v1.8.0 (or higher). After you install the Java environment, update `JAVA_HOME` in the file `env.sh`:

    export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

Cobra verifier requires [CUDA](https://developer.nvidia.com/cuda-zone). After you install CUDA, update `CUDA_PATH` in the file `env.sh`:

    export CUDA_PATH="/usr/local/cuda"



### Step 1: create environment

Fetch Cobra components:

    $ git submodule update --init --recursive

Setup Cobra's environment variables (for example, `$COBRA_HOME`):

    $ source ./env.sh

Cobra verifier and bench will use these environment variables.

Run Cobra
---


If you want to verify serializability of a history, see [Cobra verifier](https://github.com/DBCobra/CobraVerifier).

If you want to generate new histories, see [Cobra bench](https://github.com/DBCobra/CobraBench).
