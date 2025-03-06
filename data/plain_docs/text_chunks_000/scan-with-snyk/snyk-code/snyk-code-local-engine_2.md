The Snyk Code Local Engine is modular and can be customized to run specific integrations or everything at once. It can also scale as you prefer, with one or multiple nodes.
Each of the Kubernetes nodes will require at least the following free resources to run it:

55 GB RAM
14 Core CPU
50GB Ephemeral Storage

The size of the minimum node will depend on what your environment requires, but these are the minimum free resources required. 
The total required resources for each flavor of the Snyk Code Local Engine are identified in the following list. Actual memory and storage consumption depend on the usage and the size of repositories scanned. The minimum total required resources can then be divided into multiple nodes.
Deployment optionsResources requiredUse casesCLI 165GB RAM60 Core CPU55GB Ephemeral StorageRun the SCLE in the pipelineIDE 165GB RAM60 Core CPU55GB Ephemeral StorageDevelopers using it on their IDESCM 170GB RAM65 Core CPU65GB Ephemeral StorageImport repositories for monitoring purposesSCM and PR Checks 200GB RAM90 Core CPU160GB Ephemeral StorageImport repositories for monitoring purposesScan every PR for new vulnerabilitiesSCM, PR Checks and CLI 220GB RAM100 Core CPU160GB Ephemeral StorageRun the SCLE in the pipelineImport repositories for monitoring purposesScan every PR for new vulnerabilitiesFull deployment (all features)330GB RAM140 Core CPU220GB Ephemeral StorageAll of the above
