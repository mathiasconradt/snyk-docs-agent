As Snyk compiles Rego policies into Wasm modules, you can only use built-in functions that support Wasm. There is a table at the bottom of the Policy Reference Documentation that can help you identify those.
A rule may be defined multiple times with the same name, either in a file or in separate files under the same package, for example,

```
packages rules
deny[msg] {
    resource.this
}
...
deny[msg] {
    resource.that
}
...
```
These rules are referred to as incremental because each definition is additive. You can read more about Incremental Definitions in the Policy Reference Documentation. Note that these same named rules have to return a different value, or OPA will return an error. You can read more about Complete Definitions in the Policy Reference Documentation.
For more complex topics, check how OPA resolves Conflict Resolution.
