#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# 'lts' is now some version of node 22...
check "version_on_path"  node -v | grep 22
check "pnpm" bash -c "pnpm -v | grep 8.8.0"

check "v20_installed" ls -1 /usr/local/share/nvm/versions/node | grep 22
check "v14_installed" ls -1 /usr/local/share/nvm/versions/node | grep 14.19.3
check "v17_installed" ls -1 /usr/local/share/nvm/versions/node | grep 17.9.1


# Report result
reportResults
