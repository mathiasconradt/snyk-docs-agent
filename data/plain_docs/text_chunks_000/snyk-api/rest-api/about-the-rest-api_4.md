All endpoints in the Snyk REST API are paginated using cursor-based pagination. This form of pagination helps prevent inconsistent results when collections are modified while they are being iterated. However, cursor-based pagination does not totally prevent inconsistent results, which can occur, for example, if an item is inserted in a prior page based on the sort order requested after a request is made.
To mitigate the possibility of inconsistent results, by default, Snyk sorts by insertion order, so it is not possible to have items inserted on a prior page. However, if you specify the sort parameter, consistent pagination is no longer guaranteed. If you see inconsistent results, you can submit a new request. If consistent pagination is important to your workflow, use the default insertion sort order.
Whenever you receive an API response, it will contain appropriate links in the body of the response as follows:
json
{
    "data": [ ... ],
    "links": {
        "prev": "/orgs/123-abc-def-456/projects?version=2024-06-10&ending_before=v1.eyJpZCI6Mz1zODQyMH0%3D"
        "next": "/orgs/123-abc-def-456/projects?version=2024-06-10&starting_after=v1.eyJpZCI6Mz1zODQyMH0%3D"
    }
}
These links contain pre-defined parameters to make pagination easy. These parameters are a combination of:

starting_after: an opaque (Snyk internal) blob that tells Snyk the last record you have seen and that you want records after this last one
ending_before: an opaque (Snyk internal) blob that tells Snyk the first record you have seen and that you want records before this first one
limit: the number of records per page
