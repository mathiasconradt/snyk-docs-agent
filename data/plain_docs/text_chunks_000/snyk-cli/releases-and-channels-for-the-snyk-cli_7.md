Use therelease.json in each channel. The download links are provided here, followed by an example for the preview version on the MacOS platform:

https://downloads.snyk.io/cli/preview/release.json
https://downloads.snyk.io/cli/preview/snyk-macos

For MacOS, download and run a preview version of the CLI in a temporary folder named snyk-preview. To do this, you can run the following set of commands.
mkdir snyk-preview
cd snyk-preview
curl --compressed https://downloads.snyk.io/cli/preview/snyk-macos -o snyk
chmod +x ./snyk
./snyk -version
