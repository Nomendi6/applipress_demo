#!/bin/sh

if [ "$(uname)" = "Linux" ]; then
    # Linux specific settings
    export APPLIPRESS_USER_UID=$(id -u)
    export APPLIPRESS_USER_GID=$(id -g)
    export APPLIPRESS_USER="${USER_UID}:${USER_GID}"
    export APPLIPRESS_USERNAME="applipress"
    export APPLIPRESS_GROUPNAME="applipress_group"
    echo "Users set"
elif [ "$(uname)" = "Darwin" ]; then
    # macOS specific settings
    export APPLIPRESS_USER_UID=$(id -u)
    export APPLIPRESS_USER_GID=$(id -g)
    export APPLIPRESS_USER="${USER_UID}:${USER_GID}"
    export APPLIPRESS_USERNAME="applipress"
    export APPLIPRESS_GROUPNAME="applipress_group"
    echo "Users set"
else
    export APPLIPRESS_USER_UID=""
    export APPLIPRESS_USER_GID=""
    export APPLIPRESS_USER=""
    export APPLIPRESS_GROUPNAME=""
fi
