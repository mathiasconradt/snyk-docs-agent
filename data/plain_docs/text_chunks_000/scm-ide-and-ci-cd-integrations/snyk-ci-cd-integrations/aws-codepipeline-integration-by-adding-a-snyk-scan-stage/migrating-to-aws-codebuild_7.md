Edit your existing CodePipeline or create a new one.
Create a new stage to build your Project, or edit the existing build stage.
Add the commands from the example buildspec.yaml to your build stage so that the Snyk scan occurs immediately after the Project is built.


The Snyk Open Source scan must be in the same CodeBuild action as the build process to ensure that Snyk has access to the full build workspace.
