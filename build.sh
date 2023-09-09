#!/bin/sh

if [ "$1" != "bst1" ] && [ "$1" != "bst2" ]; then
  echo "usage: `basename $0` {bst1,bst2}"
  exit 1
fi

PROJECT_DIR="$1"
export XDG_CACHE_HOME="`pwd`/.cache"

cd "${PROJECT_DIR}"
./build.sh

CCACHE_DIR="workspace/.ccache"
if [ -s "${CCACHE_DIR}" ]; then
    echo "ccache folder is present and not empty in: '${CCACHE_DIR}'"
elif [ ! -d "${CCACHE_DIR}" ]; then
    echo "ccache folder missing"
else
    echo "ccache folder is present but empty in: '${CCACHE_DIR}'"
fi