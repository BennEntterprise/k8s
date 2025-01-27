#!/bin/bash

echo "./scripts/validateStaged.sh" > .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit