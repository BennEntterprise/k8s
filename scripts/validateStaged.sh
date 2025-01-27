#!/bin/bash
# Takes no args, and will validate all yaml files that are staged for commit by calling validateOne on each.
# Usage: ./validateStaged.sh
# Example: ./validateStaged.sh

# Get the list of staged files
stagedFiles=$(git diff --cached --name-only --diff-filter=ACM | grep '\.yaml\|\.yml')

# If no files are staged, exit
if [ -z "$stagedFiles" ]; then
    echo "No files are staged for commit. Exiting."
    exit 0
fi

# Loop through each staged file and run validateOne on it
for file in $stagedFiles; do
    # Skip kustomization.yaml because there is a bug
    if [[ $file == *"kustomization.yaml"* ]]; then
        continue
    fi

    ./scripts/validateOne.sh $file
    # If previous had non-zero exit code, exit
    if [ $? -ne 0 ]; then
        echo "  ❌ Validation failed for: $file"
        exit 1
    fi
done

# If we made it here, all files passed validation
echo "  ✅ All files passed validation."
exit 0
