case "$(uname -s)" in
   Darwin)
     curl -L -O $SNYK_CLI_BINARY_LOCATION/snyk-macos
     mv snyk-macos snyk-cli
     ;;
   Linux)
     curl -L -O $SNYK_CLI_BINARY_LOCATION/snyk-linux
     mv snyk-linux snyk-cli
     ;;
esac
chmod +x $SNYK_CLI_BINARY_NAME
