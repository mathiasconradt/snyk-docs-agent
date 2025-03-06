The setup commands for running the Broker client described in this section include the common commands used for all SCMs. Some SCMs require additional parameters for the Broker client setup, and those parameters are indicated in this section, but when you are setting up a Broker client for a specific SCM, see also the instructions for that SCM in the section Install and configure Snyk Broker.
The following explains how to set up the Broker client in a way that displays code snippets of the Snyk Code results in the Web UI:
Broker Client run with display of code snippets
When you are setting up the Broker client for displaying code snippets, use the same parameters as for the basic Broker client setup, and add the following file and parameters:
Download a pre-defined accept.json file to your machine. This accept.json file is customized for each SCM, and it contains the required rules for displaying the code snippets.
Add these parameters to the setup commands to mount the accept.json file to the Broker Client:
-e ACCEPT=/<folder_name>/accept.json
-v / local/path/to/<folder_name>:/<folder_name>
