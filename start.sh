BASE_DIR=$(dirname $(readlink -f "$0"))
PARENT_DIR_OF_BASE_DIR=$(dirname $BASE_DIR)
export JUPYTER_DIR=${JUPYTER_DIR:-$PARENT_DIR_OF_BASE_DIR}

docker-compose -f ${BASE_DIR}/docker-compose.yml up
