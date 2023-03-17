echo "Setting up Python environment"

PATH_ROOT=$(builtin cd $(dirname $0) && pwd)

# Path to root of specification
export PYTHONPATH=$PATH_ROOT/asm/gen:$PYTHONPATH

if [[ -d ${PATH_ROOT}/venv ]]; then
    source ${PATH_ROOT}/venv/bin/activate
else
    echo "Error: ${PATH_ROOT}/venv not found - have you run ./init.sh ?"
    return 1
fi
