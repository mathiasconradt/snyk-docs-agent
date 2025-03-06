Current Setup: Your workflow uses the Snyk CodePipeline plugin in a dedicated stage in CodePipeline.
Target Setup: Snyk scanning is performed in a custom CodeBuild build step. This build step leverages the Snyk CLI directly to execute the scan and integrate the results into your pipeline.
