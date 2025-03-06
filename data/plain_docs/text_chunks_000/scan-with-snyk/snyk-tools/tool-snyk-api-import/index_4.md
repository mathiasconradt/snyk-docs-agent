By default the import command will run if no command is specified.

import - kick off an API-powered import of repos (Targets) into existing Snyk Organizations defined in the import configuration file. All support available for all Project types is provided through the Import API endpoints, Import targets and Get Import job details. Import API (Import Projects, Import).
help - show help and all available commands and their options.
orgs:data utility - use to generate data required to create Organizations using the API.
orgs:create utility - use to create the Organizations in Snyk based on the data file generated with orgs:data command.
import:data utility - use to generate data required to kick off an import. Note that archived repositories are excluded by default.
list:imported utility - use to generate data to help skip previously imported targets during import.

The logs can be explored using the Bunyan CLI
