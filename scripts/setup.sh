#!/bin/bash
echo "#!/bin/bash" > .git/hooks/pre-commit
echo "./scripts/validateStaged.sh" >> .git/hooks/pre-commit
chmod +x .git/hooks/pre-commit