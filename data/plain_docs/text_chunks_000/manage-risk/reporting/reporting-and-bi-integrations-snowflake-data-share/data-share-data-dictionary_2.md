current version: v1.0

The GROUPS table contains the main attributes of Snyk Groups. This data can be utilized for performing aggregations on the Group level or for zooming into the scope of specific Groups.
| Column name    | Data type      | Description                                                                          |
| -------------- | -------------- | ------------------------------------------------------------------------------------ |
| public_id    | varchar        | A universally unique identifier for a Group, assigned i the records source database. |
| display_name | varchar        | The display name set for this group.                                                 |
| slug         | varchar        | The name of the Group within Snyk.                                                   |
| created      | timestamp_ntz | When this record was created in Snyk.                                                |
| deleted      | timestamp_ntz | When this record was deleted from Snyk.                                              |
| modified     | timestamp_ntz | When this record was last modified within Snyk.                                      |
| __updated_at | timestamp_ntz | When the data share data transformation last updated this record.                    |
