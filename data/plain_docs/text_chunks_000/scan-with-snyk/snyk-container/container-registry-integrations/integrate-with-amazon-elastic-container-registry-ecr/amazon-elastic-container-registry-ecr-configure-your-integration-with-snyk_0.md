After you create or update an IAM role, allow a few minutes for AWS to update the role on their servers before continuing.

From AWS, copy the Role ARN key that appears at the top of the Summary section of the Role area.
Log in to your Snyk account.
Navigate to Integrations and click the Amazon ECR option.\
   The Amazon ECR configuration page in the Settings area loads.
Enter credentials as follows:
AWS Region—use the format region-part-#, for example, eu-west-3.\
      You must enter the default region as configured for your AWS account for your repositories and images to be available for import.
Role ARN—copy from your AWS account in the format arn:aws:iam:::role/.
Click Save

An example follows:
arn:aws:iam::881001789406:role/TestSnykIntegration_role
Snyk tests the connection values, and the page reloads, now displaying Amazon ECR integration details as you entered them. A confirmation message that the details were saved also appears in green at the top of the screen.
If the connection to AWS fails, a notification appears under the Connected to Amazon ECR section.
