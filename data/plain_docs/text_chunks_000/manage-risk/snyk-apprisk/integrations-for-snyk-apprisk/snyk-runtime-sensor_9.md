Snyk provides a straightforward process for installing the Snyk Runtime Sensor on your AWS EKS cluster. The following steps explain how to integrate this security feature into your environment, enhancing the security of your cluster.
To deploy the Snyk Runtime Sensor on Amazon EKS with EKS Add-on, you need to meet the following prerequisites:

Subscribe to Snyk Runtime Sensor on AWS Marketplace here. This should be done in each account that has clusters you want to integrate the sensor with.
Install the following tools: kubectl, AWS CLI, and optionally eksctl.
Ensure you have access to the Amazon EKS clusters where you want to install the sensor.
Ensure you have a Snyk service account token ready with the right permissions, as described in the prerequisites.
