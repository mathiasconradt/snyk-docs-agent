Infrastructure as Code (IaC) in Snyk Broker
By default, some file types used by Infrastructure-as-Code (IaC) are not enabled. To grant the Broker access to IaC files in your repository, such as Terraform for example, you can add an environment variable, ACCEPT_IAC, with any combination of tf,yaml,yml,json,tpl.
Example:
docker run --restart=always \
           -p 8000:8000 \
           -e BROKER_TOKEN=secret-broker-token \
           -e GITHUB_TOKEN=secret-github-token \
           -e PORT=8000 \
           -e BROKER_CLIENT_URL=http://my.broker.client:8000 \
           -e ACCEPT_IAC=tf,yaml,yml,json,tpl
       snyk/broker:github-com
Otherwise, you can edit your accept.json, add the relevant IaC specific rules, and load the customized accept file into the container. Note that if a custom accept file (from a separate folder) is used (using the ACCEPT environment variable), the ACCEPT_IAC mechanism cannot be used.
