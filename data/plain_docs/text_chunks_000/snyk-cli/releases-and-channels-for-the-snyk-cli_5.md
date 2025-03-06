Stable: builds are deployed at distinct points in time after additional testing and are considered stable.
Version Pattern: v..
Cadence: every eight weeks (hotfix releases possible)
Availability:
https://github.com/snyk/cli/releases/
Linux: https://downloads.snyk.io/cli/stable/snyk-linux
Windows: https://downloads.snyk.io/cli/stable/snyk-win.exe
MacOS: https://downloads.snyk.io/cli/stable/snyk-macos
Alpine: https://downloads.snyk.io/cli/stable/snyk-alpine
MacOS arm64: https://downloads.snyk.io/cli/stable/snyk-macos-arm64
Linux arm64: https://downloads.snyk.io/cli/stable/snyk-linux-arm64
Alpine arm64: https://downloads.snyk.io/cli/stable/snyk-alpine-arm64
For fips, add fips to the base URL, for example, https://downloads.snyk.io/fips/cli/stable/snyk-linux 
Installation methods:
npm
Homebrew
Scoop
Snyk-images

Snyk recommends opting in to a stable channel for the following reasons:

A stable build is tested extensively over the course of eight weeks during which Snyk development teams use the CLI in the SDLC process
Accompanying release notes help you decide which version best suits your needs

However, customers who would like to receive code changes as soon they are merged can opt in to the preview channel. Note that Snyk does not offer support for the preview channel and expects known issues to be present in this channel.

Existing Snyk customers who are opted in to the previously known latest channel will be automatically opted in to the stable channel. Snyk is mirroring the latest channel and the stable channel to avoid disruption to existing customers. However, Snyk encourages you to switch to the new channels as shown above.
