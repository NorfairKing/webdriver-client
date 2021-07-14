export PATH="$HOME/.local/bin:$PATH"

specRepo=${1:-webdriver-api/webdriver-spec}
outputDir=${2:-webdriver-api/webdriver-api}
openapi3-code-generator-exe "$specRepo/selenium.yaml" \
  --property-type-suffix="'" \
  --module-name "WebdriverAPI" \
  --convert-to-camel-case \
  --package-name "webdriver-api" \
  --output-dir "$outputDir" \
  --force

tree $outputDir/src/WebdriverAPI/

