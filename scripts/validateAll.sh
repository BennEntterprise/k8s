#!/bin/bash

for file in $(find . \( -name '*.yaml' -o -name '*.yml' \)); do
    kubeconform --strict --debug $file
    if [ $? -eq 0 ]; then
        echo "    ✅ Validation succeeded for: $file"
    else
        echo "    ❌ Validation failed for: $file"
    fi
done
