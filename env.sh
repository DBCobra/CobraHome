#! /bin/bash


export COBRA_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export CUDA_PATH="/usr/local/cuda"

function fail {
  echo "[FAIL] error: $1"
  exit 1
}

#=======log files==========
COBRA_LOG_DIR="/tmp/cobra/log/"
COBRA_ERR_LOG="/tmp/cobra/error.log"
COBRA_BENCH_LOG="/tmp/cobra/benchmark.log"
