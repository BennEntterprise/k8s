#!/bin/bash
# Given a filename, the script will run kubeconform on that file and output the success/fail state
# Usage: ./validateOne.sh <filename>
# Example: ./validateOne.sh configmap.yaml

# If no filename is provided, exit
if [ -z "$1" ]; then
    echo "No filename provided. Exiting."
    exit 1
fi

# Run kubeconform on the provided file
kubeconform --strict --debug $1
if [ $? -eq 0 ]; then
    echo "    ✅ Validation succeeded for: $1"
    exit 0 # successful exit.
else
    echo "    ❌ Validation failed for: $1"
    # Exit with a non-zero status code to indicate failure
    exit 1
fi