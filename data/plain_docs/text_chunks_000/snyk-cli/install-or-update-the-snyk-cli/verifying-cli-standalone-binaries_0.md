You can verify both the shasum of downloaded binaries and their GPG signatures.
The download location on downloads.snyk.io contains a file called sha256sums.txt.asc. You can download it directly: https://downloads.snyk.io/cli/stable/sha256sums.txt.asc or for a specific version like https://downloads.snyk.io/cli/v1.666.0/sha256sums.txt.asc.
To check that a downloaded file matches the checksum, use a sha256sum command, for example:
grep snyk-macos sha256sums.txt.asc | sha256sum -c -
If you want to verify Snyk CLI standalone binaries against the Snyk CLI GPG key, first import the GPG key:
```
