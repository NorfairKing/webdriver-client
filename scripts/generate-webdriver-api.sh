export PATH="$HOME/.local/bin:$PATH"

openapi3-code-generator-exe --configuration webdriver-api/generation-spec.yaml

tree webdriver-api/
