#!/usr/bin/env bash
args="$@ --port 8000 --host 0.0.0.0"

file=/app/data/db.json
if [ -f $file ]; then
    args="$args $file"
fi

file=/app/data/routes.json
if [ -f $file ]; then
    args="$args --routes $file"
fi

json-server $args
