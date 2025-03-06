If you are able to replicate with CLI and the problem still exists, ask the CLI to output the debug logging using the following command: DEBUG=* or use the -d option to capture logs:
snyk test -d
or
DEBUG=* snyk test
