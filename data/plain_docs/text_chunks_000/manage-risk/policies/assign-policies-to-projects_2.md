To have a policy assigned, a Project must have all the attributes listed on the policy applied to the Project. The Project can also have attributes that are not listed on the policy.

If a policy applies to a Project based on the attributes, then role with edit project attribute permission can edit the Project attributes.

If multiple tags are added to a policy, the Project needs to match with only one of the Project tags. However, if other attributes are also listed on the policy, the Project would need to have all the attributes and at least one of the listed tags.
For example, if you have a policy applied to Critical, External, and Frontend, this policy is assigned to Projects that have the same attributes, but not to a Project with the attributes Critical and External only.
An example policy follows. It is applied to an attribute in the Business Criticality section, Critical, and to attributes in the Environment section,  Frontend and External. The policy also has two Project tags. The first tag has the key PCI, with the value of Compliant. The second tag has the key owner, with the value of fred.
The following Project has the attributes Frontend, External, and Critical, and has at least one matching tag, PCI:Compliant. Thus the Project will inherit the policy, that is, the policy is assigned to this Project.
Project inheriting a policy
The following Project will not inherit the policy, because the Project lacks the External environment attribute.
Project not inheriting a policy
