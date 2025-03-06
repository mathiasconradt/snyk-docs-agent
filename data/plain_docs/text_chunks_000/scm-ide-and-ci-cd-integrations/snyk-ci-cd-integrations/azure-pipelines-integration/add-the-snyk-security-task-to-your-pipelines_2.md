Add the Snyk Security Scan task when you create your pipeline or while editing an existing one. See the Azure Pipelines documentation
From Azure, access the pipeline that you want to scan for vulnerabilities. Open it for editing and check that the Build step is included just before the point at which you want to insert the Snyk task. Note that this is not required but is considered best practice for consistency across projects.
Open the assistant, search for the Snyk Security Scan task, and click it as shown in the screenshot that follows. The configuration panel opens on top of the assistant.\
   
Complete the fields in the configuration. Find full details about the parameters on Snyk Security Scan task parameters and values. If you check the Fail build if Snyk finds issue option, when the build fails the pipeline job is failed by the Snyk task. If you uncheck the Fail build if Snyk finds issue option, the Snyk task tests for vulnerabilities, but does not cause the pipeline job to fail. When testing a container image, you can specify the path to the Dockerfile with the dockerfilePath property in order to receive additional information about issues in your base image. To add your Dockerfile for additional base image data when testing your container, ensure the image has been built.
Place your cursor inside the pipeline, ensuring you place it before a deployment step, such as npm publish or docker push. You can have multiple instances of the Snyk Security Scan task within your pipeline. This might be useful, for example, if you have multiple project manifest files you want to test or if you want to test both the application and the container images.

From the configuration panel, click Add. The task is inserted into your pipeline where your cursor was placed, similar to the following:
- task: SnykSecurityScan@1
     inputs:
       testType: 'app'
       monitorWhen: 'always'
       failOnIssues: true


Once included in your pipeline, the task runs each time the pipeline runs, and the results appear in the Azure Pipelines output view:


If the Snyk task fails the build, an error message appears in the results indicating that the build failed due to snyk test.
