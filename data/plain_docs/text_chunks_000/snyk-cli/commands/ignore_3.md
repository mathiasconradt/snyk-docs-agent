When you use the --file-path option the block is similar to this:
yaml
exclude:
  '<GROUP>':
    - <FILE MATCHING-PATTERN>
    - <FILE MATCHING-PATTERN>:
      reason: <REASON>
      expires: <EXPIRY>
      created: <CREATION TIME>
Ignoring issues or vulnerabilities using the .snyk file is not supported for Snyk Code.
The --file-path option excludes directories or files from scanning and is available only for Snyk Code (SAST) tests or Open Source --unmanaged tests; it will not work for other test types.
