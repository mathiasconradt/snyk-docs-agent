Snyk static code analysis determines whether the vulnerable method is being called. This is supported for Java and JavaScript. For more details, navigate to the Reachability analysis page. \
When Reachability is not enabled, the Likelihood subscore will not change, and the factor will not show up.
| Possible input values | Score impact                                                            |
| --------------------- | ----------------------------------------------------------------------- |
| Reachable           | Likelihood subscore increases, and transitive depth is not considered.  |
| No path found       | Likelihood subscore does not change.                                    |
