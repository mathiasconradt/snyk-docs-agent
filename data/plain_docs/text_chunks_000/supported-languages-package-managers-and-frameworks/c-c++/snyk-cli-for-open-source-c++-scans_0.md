Snyk CLI for open-source C/C++
To explore the vulnerabilities for C/C++, search the Snyk Vuln DB. Snyk tests your code against this database, which is periodically updated with the latest source code from online sources. For details, see Snyk Vulnerability Database.
For Snyk to scan the open-source Project, the dependencies must be available as source code in the scanned directory. If the dependencies are in a different location, that location must be scanned. For details, see Source code dependencies must be in the scanned folder.
When you run the snyk test --unmanaged command, Snyk does the following:

Converts all files from your current folder into a list of hashes.
Sends hashes to the Snyk scan server to compute the dependencies list.
Queries the database to find a list of potentially matching dependencies.
Links the dependencies to the known vulnerabilities.
Displays the results.
