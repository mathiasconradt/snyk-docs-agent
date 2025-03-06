After you apply Project attributes to your Projects, you can create policies that apply to those attributes. Projects and policies are linked based on the attributes that have the policy applied.

Policies applied to Project attributes always take precedence over policies applied to Organizations.

A policy can be applied to one or multiple Project attributes, but only one policy can be applied to a set of attributes. For example, if there is a policy applied to Critical, Production,Frontend, you cannot create another policy that is applied only to these exact attributes.

Policies applied to Project attributes affect the CLI command snyk monitor, assuming it runs on a CLI Project that has Project attributes assigned. Project attributes applied to policies do not affect snyk test.
