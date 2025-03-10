If you have generated the rules using the template command, as shown in Writing a rule, then you can also benefit from using the testing functionality that comes with the SDK and the generated rules.

You may also write your own testing functionality or modify the one generated by the SDK, as you prefer. However, the instructions on this page would not apply.

Assuming you have written your rule based on the previous page, open the main_test.rego file generated by the SDK's templating functionality and configure the fixture field with the name of the file inside your rules/MY_RULE/fixtures/ folder. The templating functionality has created one file per supported format and configured the tests to run against all of them, but you may remove fixture files as you desire.
Create or modify fixture files to store your resources under rules/MY_RULE/fixtures. These files can have any name, so take, for example, denied.tf and allowed.tf:

The file can have any name, but pay close attention to the file extension. Be especially careful if you want to write a test for a fixture file containing Terraform Plan JSON Output. Make sure the name of the file has the file extension .json.tfplan so that the Snyk testing library can differentiate between plain JSON and Terraform Plan JSON Output.


resource "aws_redshift_cluster" "denied" {
  cluster_identifier = "tf-redshift-cluster"
  database_name      = "mydb"
  master_username    = "foo"
  master_password    = "Mustbe8characters"
  node_type          = "dc1.large"
  cluster_type       = "single-node"
}


resource "aws_redshift_cluster" "allowed" {
  cluster_identifier = "tf-redshift-cluster"
  database_name      = "mydb"
  master_username    = "foo"
  master_password    = "Mustbe8characters"
  node_type          = "dc1.large"
  cluster_type       = "single-node"
  tags {
    owner = "snyk"
  }
}

In the want_msgs field of the test case, you should add the msg fields of the resources that you expect your deny rule will evaluate and return, for example,["input.resource.aws_redshift_cluster[denied].tags"].

The want_msgs field should be an array containing hardcoded values corresponding to the computed msg field in the appropriate Rego rule.


```
package rules
import data.lib
import data.lib.testing
test_MY_RULE {
    # array containing test cases where the rule is allowed
    allowed_test_cases := [{
        "want_msgs": [],
        "fixture": "allowed.tf",
    }]
    # array containing cases where the rule is denied
    denied_test_cases := [{
        "want_msgs": ["input.resource.aws_redshift_cluster[denied].tags"],
        "fixture": "denied.tf",
    }]
    test_cases := array.concat(allowed_test_cases, denied_test_cases)
    testing.evaluate_test_cases("MY_RULE", "./rules/MY_RULE/fixtures", test_cases)
}
```

To run all tests, run the following command:
snyk-iac-rules test
If your tests pass successfully, you will see an output like the following, assuming you have three different rules in your rules/ folder:
PASS: 3/3
However, if any of them fail, you will see an output like this:
data.rules.test_MY_RULE: FAIL (1.12234ms)
FAIL: 2/3
If you have more than one rule in your rule/, folder you can target a specific test by running the following command:
snyk-iac-rules test --run test_MY_RULE
The output follows:
```
Executing Rego test cases...
data.rules.test_MY_RULE: FAIL (1.040468ms)

FAIL: 1/1
```
If you need more details about the output, add the --explain notes option:
snyk-iac-rules test --run test_MY_RULE --explain notes
This provides output showing more details to use to debug the failed test.

If you have more than your generated rules in the current folder, consider using the --ignore option to exclude the folders and files irrelevant to testing. Make sure to not exclude lib/ and rules if you used the template command. This can speed up the tests and also avoids running into problems where Rego is trying to evaluate non-Rego files.
