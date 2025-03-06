The Universal Broker separates deployment and container concerns from connection concerns. It allows for a smaller or a single deployment to support numerous connections of varied types.
Universal Broker Model
In contrast to the existing Broker model, where each deployment and container supports only one connection type, Snyk is providing Broker deployments configured to support many connections in a set-and-forget approach.
Many connections into a single deployment require more configuration parameters to load for each connection. To make this manageable at scale, Snyk has decoupled deployments from connections.
Broker operators now declare their desired deployment model before running any Broker client. By specifying what Broker connections to support, the existing approach org->integrations->broker connections is evolving to be instead Broker Connections -> integration/org.
Deployments are roughly equivalent to running containers or a replicaset (on Kubernetes deployment models). Deployments aim to represent the entity running the Broker code on a server.
Connections represent a set of individual connections provided by the Universal Broker deployment to a specific downstream system (SCM, Jira, and so on) with a given set of credentials for each.
A single deployment can support any number of connections of various types. Although the Universal Broker may provide new capability, Snyk recommends keeping the number below 25 connections, because container resources are not infinitely vertically scalable.
This model does not store credentials; it uses a credentials reference or references. These indicate to the Broker client that the credentials supporting a given connection are expected to be found in a specifically named environment variable.
For example, deployments run a connection (type github) using the environment variable name defined in the associated credentials reference ($MY_CRED_REF).
