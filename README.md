# Execution

./build.sh bst1 \
output: `ccache folder is present and not empty in: 'workspace/.ccache'`


./build.sh bst2 \
output: `ccache folder missing`

# Cleanup

Every files created during the script execution (buildstream cache, ccache cache and python packages) are located inside this directory so just delete this folder.