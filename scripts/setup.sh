#!/bin/bash

echo "./scripts/validateAll.sh" >> .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit