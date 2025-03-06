You can download and use the SDK's prebuilt binaries. To download the prebuilt binary, visit the Releases tab on the SDK repository page in GitHub:
Releases tab on the SDK repository page
After you have downloaded the desired binary archive, open a terminal and run the following commands. Note that these commands assume you are running on an Intel-based macOS and downloading version 0.0.5 of the SDK.
$ tar xzf snyk-iac-rules_0.0.5_Darwin_x86_64.tar.gz 
$ sudo mv snyk-iac-rules /usr/local/bin
To verify that you can use the SDK, run:
snyk-iac-rules --help
