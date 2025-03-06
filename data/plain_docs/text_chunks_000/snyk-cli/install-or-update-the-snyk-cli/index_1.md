When you use this method, you must keep the Snyk CLI up to date manually.

Use GitHub Releases to download a standalone executable (macOS, Linux, Windows) of Snyk CLI for your platform.
Snyk also provides these standalone executables on the Snyk Content Delivery Network (CDN). See the latest release.json file for the download links. Examples for a specific version or platform follow:

https://downloads.snyk.io/cli/v\/release.json
https://downloads.snyk.io/cli/stable/release.json
https://downloads.snyk.io/cli/stable/snyk-macos

For example, to download and run the latest Snyk CLI on macOS, you could run:
bash
curl --compressed https://downloads.snyk.io/cli/stable/snyk-macos -o snyk
chmod +x ./snyk
mv ./snyk /usr/local/bin/
You can also use these direct links to download the executables:
| OS\Architecture | amd64                                                             | arm64                                                                       |
| --------------- | ----------------------------------------------------------------- | --------------------------------------------------------------------------- |
| macOS           | snyk-macos     | snyk-macos-arm64   |
| Linux           | snyk-linux     | snyk-linux-arm64   |
| Alpine          | snyk-alpine   | snyk-alpine-arm64 |
| Windows         | snyk-win.exe | -                                                                           |
You can rename the files for example snyk-win.exe to snyk.exe so you can run snyk commands as documented, for example, snyk test.

To use CLI releases before version 1.1230.0 on an Apple M1 or M2 machine, (darwin/arm64), see Using CLI releases before version 1.1230.0 on an Apple M1 or M2 machine.
To use the CLI with Alpine Linux, see Prerequisites for CLI and Jenkins plugin on Alpine Linux operating system.
For more information see verify CLI standalone binaries.
