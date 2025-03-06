Audit log event payloads have not changed as part of the REST migration, however, the structure of the response is different to conform to our standardised JSON API responses.
The V1 response is returned as an array, e.g.
```
[
 {
 "groupId": "4a18d42f-0706-4ad0-b127-24078731fbea",
 "orgId": "4a18d42f-0706-4ad0-b127-24078731fbea",
 "userId": "4a18d42f-0706-4ad0-b127-24078731fbea",
 "projectId": null,
 "event": "group.edit",
 "content": {
 "before": {
 "name": "Group Previous Name"
 },
 "after": {
 "name": "Group Current Name"
 }
 },
 "created": "2017-04-11T21:00:00.000Z"
 }
]
```
The REST response will contain the same event payload information, however, it will be in the following format:
```
{
 "data": {
 "items": [
 {
 "groupId": "4a18d42f-0706-4ad0-b127-24078731fbea",
 "orgId": "4a18d42f-0706-4ad0-b127-24078731fbea",
 "userId": "4a18d42f-0706-4ad0-b127-24078731fbea",
 "projectId": null,
 "event": "group.edit",
 "content": {
 "before": {
 "name": "Group Previous Name"
 },
 "after": {
 "name": "Group Current Name"
 }
 },
 "created": "2017-04-11T21:00:00.000Z"
}
\
\
 ],
 },
 "jsonapi": {
 "version": "1.0"
 },
 "links": {
 "next": "https://example.com/api/resource",
 }
}
```
