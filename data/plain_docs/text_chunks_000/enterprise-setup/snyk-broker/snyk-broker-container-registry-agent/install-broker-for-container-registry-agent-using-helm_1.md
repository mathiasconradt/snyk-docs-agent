crRoleArn
crRegion
crExternalId

helm install snyk-broker-chart snyk-broker/snyk-broker \
             --set scmType=container-registry-agent \
             --set brokerToken=<ENTER_BROKER_TOKEN> \
             --set crType=ecr \
             --set crRoleArn=<ENTER_CR_ROLE_ARN> \
             --set crRegion=<ENTER_CR_REGION> \
             --set crExternalId=<ENTER_CR_EXTERNAL_ID> \
             -n snyk-broker --create-namespace
