#!/usr/bin/env bash

set -e

CONTAINER=$1

if [[ $CONTAINER == "api" ]]; then
    echo "Compiling Go backend"
    air
fi

run-parts /docker-entrypoint-init.d
