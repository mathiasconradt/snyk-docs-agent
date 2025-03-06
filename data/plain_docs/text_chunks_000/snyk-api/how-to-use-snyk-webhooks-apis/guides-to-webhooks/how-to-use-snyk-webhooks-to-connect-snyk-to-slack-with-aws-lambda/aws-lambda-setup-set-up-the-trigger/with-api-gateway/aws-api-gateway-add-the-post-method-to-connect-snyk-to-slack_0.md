The payload Slack will receive will have a message, so create a POST method that will receive the message, verify it is a valid message, and then send on to the AWS Lambda function.
Follow these steps to add the POST Method:

Navigate to the AWS API Gateway you have created.
Click Resources.
To create the method, navigate to Actions -> Create Method -> Post.

Configure the AWS API Gateway to work with the Lambda function you created by adding the Gateway in the adjacent Lambda function box:\
    Choose the Lambda Function Integration type.\
    Select Default Timeout.
AWS Lambda function box
5. In the Resources, lick the new POST method.
6.  Click Integration Request (top right on the AWS Gateway POST method execution screen).
AWS Gateway POST method execution
7. Scroll to the bottom and add a Mapping Template with application/json Content-Type. To the template add the following code:\
   {\
   "method": "$context.httpMethod",\
   "body" : $input.json('$'),\
   "headers": {\
   #foreach($param in $input.params().header.keySet())\
   "$param": "$util.escapeJavaScript($input.params().header.get($param))"\
   #if($foreach.hasNext),#end #end\
   }\
   }
8.  Verify the resulting display reflects these entries.
AWS API Gateway POST request Mapping Template with code
