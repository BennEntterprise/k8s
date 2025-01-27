#!/bin/bash

for file in $(find . \( -name '*.yaml' -o -name '*.yml' \)); do
    # If the filepath has "kustomization.yaml" in it, skip the validation, there's a bug 
    # that causes this to fail, even though kind/apiVersion are not required
    if [[ $file == *"kustomization.yaml"* ]]; then
        continue
    fi
    kubeconform --strict --debug $file
    if [ $? -eq 0 ]; then
        echo "    ✅ Validation succeeded for: $file"
    else
        echo "    ❌ Validation failed for: $file"
    fi
done
