SNYK_CLI_BINARY_NAME=snyk-cli
SNYK_CLI_BINARY_LOCATION=https://github.com/snyk/cli/releases/latest/download/
REMOTE_REPO_URL= #Insert desired project name in Snyk UI here
detected_jars=""
undetected_jars=""
detected_count=0
undetected_count=0
[[ -z "$REMOTE_REPO_URL" ]] &&
