#!/bin/sh

# Prepare environment variables to map the user inside the container
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

# Start docker compose

# Check if "docker compose" is supported
docker compose version > /dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "Using 'docker compose' to start applipress."
  docker compose up -d
else
  # Check if "docker-compose" is available
  docker-compose version > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "Using 'docker-compose' to start applipress."
    docker-compose up -d
  else
    echo "Neither 'docker compose' nor 'docker-compose' are available. Please install one of them."
    exit 1
  fi
fi
