Adding the Code Agent after installing Snyk Broker for your SCM connects Snyk Code to your self-hosted Git server through Snyk Broker
The Code Agent is available as a Docker image. The Code Agent is supported only for Snyk Broker version 4.108.0 and later versions. If you already have a running Broker Client, you must update it by pulling the latest Docker image.
Deploying the Broker client and Code Agent creates two separate services. that, along with the Broker server, Snyk Code AI Engine, and Snyk Web UI, enable the following Code Analysis workflow:

A user initiates a request to import a repository from a self-hosted Git server to Snyk for Code Analysis, either on the Web UI or by using the endpiont Import targets.
The request arrives at the Broker server, which sends the request to the Broker client, which sends the request to the Code Agent. The Broker client automatically provides the Code Agent with the connection details to the integrated SCM, which stores the required repositories.
The Code Agent connects to the integrated SCM, and securely clones the local repository in your infrastructure. The cloned repository is stored temporarily in the Code Agent container. The cloning is done over an HTTPS connection. If your SCM does not support HTTPS, you use a reverse proxy. For details reach out to your technical contact at Snyk.
The Code Agent filters the cloned repository for supported files and sends them to the Snyk Code AI Engine.
The Snyk Code AI Engine analyzes the code files in search of vulnerability issues. The analysis results are sent back to the Snyk Web UI. The cloned files are cached according to the Cloud provider's storage minimum policy.

Snyk Code Analysis workflow with Broker
