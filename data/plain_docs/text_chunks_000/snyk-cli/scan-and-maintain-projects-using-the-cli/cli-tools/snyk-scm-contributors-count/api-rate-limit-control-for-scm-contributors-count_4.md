On Github Enterprise, the API rate limit is 5,000 calls per hour for authenticated users as described in this guide.
The snyk-scm-contributors-count tool applies a strict limit of a maximum of 3 calls per second which amounts to 10,800 calls per hour, to deal with the rate limit and an additional regulating mechanism to deal with 429 responses ("too many calls").
