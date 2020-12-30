#!/bin/bash
set -euo pipefail

args="$@ --port 8000 --host 0.0.0.0"

volume_path=/app/data

server_file=${volume_path}/server.js
if [[ -f ${server_file} ]]; then
    node ${server_file}
fi
