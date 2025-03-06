Snyk  GA REST APIs are an evolution of Snyk V1 APIs because the GA REST APIs have the following: 

Consistent versioning
Pagination and caching
Improved performance
Specifications for client generation

Snyk EOL for V1 APIs and replacement with GA REST APIs will implement this improvement over the equivalent V1 APIs. As Snyk delivers more GA REST APIs, experimental and beta versions of the REST API will also reach end-of-life.
Migrating from V1 API to GA REST can be a time-consuming process, and Snyk wants to ensure that you have enough time to factor in and execute migrations so that you can have the best API experience as soon as possible. The process for taking an endpoint (V1, experimental, or beta API) to EOL for seamless migration to GA REST is as follows: 

Batches of endpoints will be part of an EOL cycle that begins twice a year: one batch in January and one batch in July.
API endpoints can be included for EOL only if they have:
A GA REST equivalent or equivalents (except in the rare case where a V1 API does not have or need a GA REST equivalent)
Functionality parity between V1 and GA REST (unless explicitly stated otherwise in the migration guide)
A migration guide by our field specialists for ease of migration
Snyk will publicly announce which endpoints will be part of an EOL cycle one month before the cycle begins. 
On the date the EOL begins, the endpoints are deemed deprecated. At that point, the documentation of each endpoint will either be removed or have a statement added that the endpoint is deprecated. In addition, no new customers will be able to integrate with the endpoint. The endpoint will remain functional for existing customers until the end-of-life date. You can find all of the endpoints being sunsetted and the associated timelines on the API EOL endpoints and key dates page.
On a monthly basis during the EOL cadence, Snyk will temporarily halt functionality for the nominated endpoints for a period of time, increasing in duration over the course of the EOL.
When we reach the EOL date, the endpoint will stop working, and you will receive an error.
