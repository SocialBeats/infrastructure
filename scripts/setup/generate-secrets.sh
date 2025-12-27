#!/bin/bash

set -e
set -a
source .env
set +a

BASE_DIR="./k8s/base"

for service in $(ls $BASE_DIR); do
    TEMPLATE="$BASE_DIR/$service/secret-template.yaml"
    OUTPUT="$BASE_DIR/$service/secret.yaml"
    if [ -f "$TEMPLATE" ]; then
        envsubst < "$TEMPLATE" > "$OUTPUT"
        echo "Secret generated for $service"
    fi
done
