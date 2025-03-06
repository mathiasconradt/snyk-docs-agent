Log in to the AWS Management Console.
Navigate to CloudFormation.
Select the Create stack button:

Select the Create stack button in the AWS Management Console
4. Select With new resources (standard) from the drop-down menu.
5. On the Create stack page, in the Specify template section and select Upload a template file.
6. Click the Choose file button that appears and select your CloudFormation file containing the Snyk IAM role.
7. Select Next.
8. On the Specify stack details page, in the Stack name section, enter a stack name, such as snyk-cloud-role.
9. Select Next.
10. On the Configure stack options page, enter tags if desired and keep the rest of the defaults.
11. Select Next.
12. On the Review page, in the Capabilities section at the bottom, check the box I acknowledge that AWS CloudFormation might create IAM resources with custom names.
13. Select Create stack.
14. AWS launches the stack, and you'll see a page with stack details. You can select the Refresh button to refresh its status:
Select the Refresh button to refresh the stack status in the AWS Management Console
If the Status column says CREATE_COMPLETE, AWS has finished creating the IAM role.
