IN THEORY this should work. It was the instruction I found in a tutorial that is only a little more than 18 months old. However, when trying to apply the yaml there are errors that ask for a `kind` and `apiVersion`. For now I am going to leave this here and look back on it. 

```yaml
# kustomization.yaml
# This implementation uses files to declare the secrets.
# The name of the secret is the file name (without the extension).
# The content of the file is the secret value 
secretGenerator:
- name: kustomize-user-creds2
  files:
  - username.txt
  - password.txt
  ```