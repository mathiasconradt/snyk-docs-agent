There are two options to get started:


Use the template command to generate the required files for writing a rule:
snyk-iac-rules template --rule <RULE-NAME> --format <hcl2|json|yaml|tf-plan>
This generates the scaffolding for the rule, including fixture files based on the provided configuration format. For more details, read the documentation about the template command.
2. Create a Rego policy from scratch and match the expected file and folder structure on your own:\
   rules\
   └── my_rule\
   ├── main.rego\
   └── main_test.rego



You will have to write your own Rego testing framework if you do not use the templatecommand.
