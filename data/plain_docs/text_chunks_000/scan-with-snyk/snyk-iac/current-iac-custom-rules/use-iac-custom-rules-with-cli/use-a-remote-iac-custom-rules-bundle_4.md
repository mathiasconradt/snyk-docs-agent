Enable debug logs by running the command with the -d option:
snyk iac test <file> -d
Some possible problems include:

Providing an invalid container registry URL. See the note above if you are using Docker Hub. The error is

We were unable to download the custom bundle to the disk. 
Please ensure access to the remote Registry and validate you have provided all the right parameters.

Providing invalid credentials. The error is:

There was an authentication error. Incorrect credentials provided.
    We were unable to download the custom bundle to the disk.
    Please ensure access to the remote Registry and validate you have provided all the right parameters.
If you have found a discrepancy that you cannot explain, contact Snyk Support.
