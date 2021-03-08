#!/usr/bin/env bash
set -xe

BASE_DIR=$(dirname "$(readlink -f "$0")")

docker build -f ${BASE_DIR}/docker/Dockerfile -t bg/jupyter-experiment-env ${BASE_DIR}/docker/

PARENT_DIR_OF_BASE_DIR=$(dirname "$BASE_DIR")
export JUPYTER_DIR=${JUPYTER_DIR:-$PARENT_DIR_OF_BASE_DIR}

docker-compose -f "${BASE_DIR}"/docker-compose.yml up
