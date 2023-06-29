#!/bin/sh

if [ "$(uname)" = "Linux" ]; then
    # Linux specific settings
    export APPLIPRESS_USER_UID=$(id -u)
    export APPLIPRESS_USER_GID=$(id -g)
elif [ "$(uname)" = "Darwin" ]; then
    # macOS specific settings
    export APPLIPRESS_USER_UID=$(id -u)
    export APPLIPRESS_USER_GID=$(id -g)
else
    export APPLIPRESS_USER_UID=""
    export APPLIPRESS_USER_GID=""
fi
echo "Users set"