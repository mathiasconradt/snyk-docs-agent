--rule=RULE
The mandatory name of the rule you want to define. This generates a rules/ folder at the top level, which contains a folder named after the rule and a Rego rule and Rego test file. At the same time, it generates a lib/ folder containing utility functions that can be accessed from data.lib for writing rules and extending the testing library, or data.lib.testing for the tests.
The scaffolded folder structure looks like this:
rules\
└── RULE\
├── fixtures\
├── allowed.<extension>\
└── denied.<extension>\
├── main.rego\
└── main_test.rego\
lib\
└── testing\
└── main.rego\
└── tfplan.rego\
└── main.rego
the rule name cannot contain any whitespace or start with SNYK-.
--format=hcl2|json|yaml|tf-plan
The mandatory configuration format you want to define your rule for. This generates two fixture files under the rules/<RULE>/fixtures folder, which are then used by the tests to verify the behavior of the Rego rule.
--severity=low|medium|high|critical
The severity of the rule, which will show up when running the Snyk Infrastructure as Code CLI.
Default: low
--title=TITLE
The title of the rule, which will show up when running the Snyk Infrastructure as Code CLI.
