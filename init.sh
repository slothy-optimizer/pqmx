#!/bin/bash

set -e

PATH_ROOT=$(builtin cd $(dirname $0) && pwd)
PATH_VENV=${PATH_ROOT}/venv

if [[ ! -d ${PATH_VENV} ]]; then
    python3 -mvenv ${PATH_VENV}
fi

${PATH_VENV}/bin/pip install -r ${PATH_ROOT}/requirements.txt
