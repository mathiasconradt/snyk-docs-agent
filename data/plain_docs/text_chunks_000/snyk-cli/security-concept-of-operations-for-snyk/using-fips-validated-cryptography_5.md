The example that follows uses a Microsoft Mariner image to download and run the FIPS-enabled Snyk CLI.
```bash
docker run -it mcr.microsoft.com/cbl-mariner/base/core:2.0 bash

tdnf install -y ca-certificates
curl --compressed https://downloads.snyk.io/fips/cli/latest/snyk-linux-arm64 -o snyk
chmod +x snyk
./snyk -d
...
2023-09-13T11:02:49Z main - Features:
2023-09-13T11:02:49Z main -   oauth:               Disabled
2023-09-13T11:02:49Z main -   fips:                Enabled
...
```
