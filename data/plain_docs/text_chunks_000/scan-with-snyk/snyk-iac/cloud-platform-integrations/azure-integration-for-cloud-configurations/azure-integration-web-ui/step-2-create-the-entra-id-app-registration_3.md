If you use the Azure CLI locally, ensure you have logged in with az login first. This step is not necessary when you are using the CLI in the Azure Cloud Shell.


In your terminal or in the Cloud Shell, navigate to the directory containing your .sh file.
Make the Bash script executable using the chmod command:

bash
chmod 755 snyk-permissions-azure.sh

Run the script:

bash
./snyk-permissions-azure.sh
The Azure CLI then creates the AD app registration, federated identity credential, and service principal. When it is finished, you will see JSON output with information about the created infrastructure.
Copy the application ID, the last item in the output:
json
{
  "application_id": "12345678-9012-3456-7890-12345678abcd"
}
Copy this application ID for use in the next step.
