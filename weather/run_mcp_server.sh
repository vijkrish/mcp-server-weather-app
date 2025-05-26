#!/bin/bash

# Activate the virtual environment
source "$(dirname "$0")/.venv/bin/activate"

# Find the uv command
UV_PATH=$(which uv)
if [ -z "$UV_PATH" ]; then
    echo "Error: uv command not found. Please install it globally with:"
    echo "pip install uv"
    exit 1
fi

# Print the uv path for debugging
echo "Using uv from: $UV_PATH"

# Run the MCP server
python "$(dirname "$0")/weather.py"
