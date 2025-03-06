SNYK_IMPORT_PATH- the path to the import file or use --file parameter
SNYK_TOKEN - your Snyk api token
SNYK_LOG_PATH - the path to the folder where all logs should be saved. Snyk recommends creating a dedicated logs folder for each import you have running. all logs will be appended.
CONCURRENT_IMPORTS (optional) - defaults to 15 repositories at a time, which is the recommended maximum to import at once. One repository alone may have many Projects inside, which can trigger a request for many files at once from the user's SCM instance. Some may have rate limiting in place. This script aims to help reduce the risk of hitting a rate limit.
SNYK_API (optional) defaults to https://api.snyk.io/v1
