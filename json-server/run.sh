#!/bin/bash
set -euo pipefail

args="$@ --port 8000 --host 0.0.0.0"

volume_path=/app/data

db_file=${volume_path}/db.json
if [ -f ${db_file} ]; then
    args="${args} ${db_file}"
fi

routes_file=${volume_path}/routes.json
if [ -f ${routes_file} ]; then
    args="${args} --routes ${routes_file}"
fi

middlewares_directory=${volume_path}/middlewares
if [ -d "${middlewares_directory}" ]; then
    middlewares=""
    for middleware in $( ls ${middlewares_directory}/*.js ); do
        middlewares+="${middleware} "
    done
    args="${args} --middlewares ${middlewares}"
fi

json-server ${args}
