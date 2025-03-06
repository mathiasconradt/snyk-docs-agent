You can use filter rules to describe resources and ignore resources. You can use both inclusion and exclusion logic.
Filter rules allow you to build a complex include and exclude expression to include and exclude a set of resources in your workflow. This capability is powered by the expression language JMESPath.
Filters are applied on a normalized struct that contains the following fields:

Type: Type of the resource, for example, aws_s3_bucket
Id: Id of the resource, for example, my-bucket-name

​Examples of filter rules follow.
```
