| Filter by                  | Purpose                                                   | Experimental | GA               |
| -------------------------- | --------------------------------------------------------- | ------------ | ---------------- |
| starting_after            | return the page of results immediately after this cursor  | Present      | No change        |
| ending_before             | return the page of results immediately before this cursor | Present      | No change        |
| limit                      | number of results to return per page                      | Present      | No change        |
| scan_item.id              | filter issues through their scan item relationship        | Present      | No change        |
| scan_item.type            | filter issues through their scan item relationship        | Present      | No change        |
| type                       | filter by issue type                                      | Present      | No change        |
| updated_after             | filter issues updated after this date                     | Present      | No change        |
| updated_before            | filter issues updated before this date                    | Not present  | Newly introduced |
| created_before            | filter issues created before this date                    | Not present  | Newly introduced |
| created_after             | filter issues created after this date                     | Not present  | Newly introduced |
| effective_severity_level | filter issues by one or more effective severity levels    | Not present  | Newly introduced |
| status                     | filter by an issues status                                | Not present  | Newly introduced |
| ignored                    | filter issues by their ignored status                     | Not present  | Newly introduced |
[^1]: The only risk factors presently in the issues API are insights factors.
[^2]:  For customers with risk score enabled this should be the risk score, but without any risk factors. For customers w/o the risk score enabled, this is the old priority score.
[^3]: As noted above,  to match an issue in the experimental api response to the same issue in the GA API response you can use key and the scan_item.id. Note that scan_item is part of the relationships block and key is part of the attributes block.
