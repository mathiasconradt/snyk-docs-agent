current version: v1.0

The ORGS table contains the main attributes of Snyk Organizations. This data can be utilized for performing aggregations on the organization level or for zooming into the scope of specific organizations.

The group_public_id column allows you to query organizations in specific groups.

| Column name       | Data type      | Description                                                                                   |
| ----------------- | -------------- | --------------------------------------------------------------------------------------------- |
| public_id       | varchar        | A universally unique identifier for an organization, assigned in the records source database. |
| group_public_id | varchar        | A universally unique identifier for a group, assigned in the records source database.         |
| display_name    | varchar        | The display name set for this organization.                                                   |
| slug            | varchar        | The name for the Organization within Snyk.                                                    |
| created         | timestamp_ntz | When this record was created in Snyk.                                                         |
| deleted         | timestamp_ntz | When this record was deleted from Snyk.                                                       |
| modified        | timestamp_ntz | When this record was last modified within Snyk.                                               |
| __updated_at    | timestamp_ntz | When the data share data transformation last updated this record.                             |
