--verbose
Output tracing logs.
--explain=full|notes|fails
Filter tracing logs.
Default: fails
--timeout=TIMEOUT
The amount of time in nanoseconds to wait for the tests to run. If it takes longer than TIMEOUT, the tests fail.
Default: 5000000 (5 seconds).
--ignore
Accepts a regular expression that can be used to ignore files and folders and prevent them from being loaded for testing.
Default: ".*" (hidden files), "fixtures"
--run
Accepts a regular expression that can be used for running a subset of the tests.
