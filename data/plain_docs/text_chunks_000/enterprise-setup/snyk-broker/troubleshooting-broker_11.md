As for Standalone Broker, in order to troubleshoot the code agent, you must generate logs. Do this by attempting to import a repository.

Ensure that the Broker is functioning correctly and you can list the repositories. If this does not work, review the Standalone Broker troubleshooting steps.
If, after attempting to import a repository, you see an error message Bundle Creation Failed, review the logs of the containers.
Start with the Broker container. Run docker logs <container id>
Look for the string snykgit . This is the API call from the Broker container to the Code Agent container. If you get anything other than a 200 code, there is some problem with the communication between the Broker and the Code Agent. Ensure you have the proper flags set in the docker run command. Also, ensure you have set up the Docker network
Review the logs of the Code Agent by running docker logs <container id>
