To display dependencies, use the --print-deps option:
```bash
$ snyk test --unmanaged --print-deps
Testing /Users/user/src/foo...
Dependencies:
https://curl.se|curl@7.29.0
  purl: pkg:generic/curl@7.29.0?download_url=https:%2F%2Fcurl.se%2Fdownload%2Farcheology%2Fcurl-7.29.0.tar.gz
  confidence: 1.000
https://github.com|nih-at/libzip@1.8.0
  purl: pkg:generic/libzip@1.8.0?download_url=https:%2F%2Fgithub.com%2Fnih-at%2Flibzip%2Farchive%2Fv1.8.0.tar.gz
  confidence: 1.000
https://github.com|madler/zlib@1.2.11
  purl: pkg:generic/zlib@1.2.11?download_url=https:%2F%2Fzlib.net%2Ffossils%2Fzlib-1.2.11.tar.gz
  confidence: 1.000
```
To learn what files contributed to each dependency being identified, use the --print-dep-paths option:
```bash
$ snyk test --unmanaged --print-dep-paths
Testing /Users/user/src/foo...
Dependencies:
https://curl.se|curl@7.29.0
  purl: pkg:generic/curl@7.29.0?download_url=https:%2F%2Fcurl.se%2Fdownload%2Farcheology%2Fcurl-7.29.0.tar.gz
  confidence: 1.000
  matching files:
    - curl-7.29.0/Android.mk
    - curl-7.29.0/CHANGES
    - curl-7.29.0/CMake/CMakeConfigurableFile.in
    ... and 1766 more files
https://github.com|nih-at/libzip@1.8.0
  purl: pkg:generic/libzip@1.8.0?download_url=https:%2F%2Fgithub.com%2Fnih-at%2Flibzip%2Farchive%2Fv1.8.0.tar.gz
  confidence: 1.000
  matching files:
    - libzip-1.8.0/API-CHANGES.md
    - libzip-1.8.0/AUTHORS
    - libzip-1.8.0/CMakeLists.txt
    ... and 780 more files
https://github.com|madler/zlib@1.2.11
  purl: pkg:generic/zlib@1.2.11?download_url=https:%2F%2Fzlib.net%2Ffossils%2Fzlib-1.2.11.tar.gz
  confidence: 1.000
  matching files:
    - zlib-1.2.11/CMakeLists.txt
    - zlib-1.2.11/ChangeLog
    - zlib-1.2.11/FAQ
    ... and 249 more files
```
This output also shows how confident Snyk is about the identified dependency and its version. To sww how confident Snyk is about the identified dependency and its version, you can, use the --print-deps or --print-dep-paths option.
