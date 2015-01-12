#!/bin/bash

export_default_env () {
    export BECOROOT="."
    export IGNORE_TO_CHECK_DOCKER=1
    export BECO="./bin/beco -d"
}
