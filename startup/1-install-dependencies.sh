BASE_DIR=$(dirname "$(readlink -f "$0")")

pip install -r "${BASE_DIR}"/before-notebook.d/requirements.txt

function installExtensionIfDontExist() {
    local exists

    jupyter labextension check "$1"
    exists=$?
    if [ $exists -ne 0 ]; then
      jupyter labextension install "$1"
    fi
}

installExtensionIfDontExist "@jupyter-widgets/jupyterlab-manager"
installExtensionIfDontExist "jupyter-matplotlib"
