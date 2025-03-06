If we build and run our Snyk App at this point, hitting the /auth route will successfully jump us out to the Snyk authorization portal and, provided we confirm the authorization, we'll get kicked back to our local app's callback route at /callback. If we had a very simplistic, one-off use case, we could end things here. But there's one more piece of the puzzle we should figure out if we're going to keep our user's authorization fresh; that is token expiry.
If you ran the app to test things, take a look at database entries. If you've been following along, you should see something like this:
json
{
  "installs": [
    {
      "date": "2021-12-28T19:15:02.043Z",
      "userId": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
      "orgId": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
      "access_token": "xxxxxxxxxxxxxxxxxxxxxxxxxx",
      "expires_in": 3599,
      "scope": "apps:beta",
      "token_type": "bearer",
      "refresh_token": "yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
    },
  ]
}
That expires_in value will continue to count down until 0. If it does, the user will need to re-authorize.
To keep our access token from going stale, we need to make a POST request using our refresh_token to get an updated access_token. See Set up the refresh token exchange.
We can automate this process in our Snyk App by utilizing Axios interceptors to intercept the requests we make and ensure we have an up-to-date access_token.
Create the file ./src/util/interceptors.ts, importing all the packages, classes, and so on that we'll need at the top:
typescript
// ./src/util/interceptors.ts
import type  from "axios";
import  from "../interfaces/DB";
import  from "luxon";
import  from "./DB";
import  from "../routes/projects/projectsController";
import  from "./encrypt-decrypt";
import  from "../util/APIHelpers";
import  from "../app";
import axios from "axios";
We'll add a total of three interceptors.
The first, refreshTokenReqInterceptor will refresh the auth_token using the refresh_token when the auth_token expires. It takes an AxiosRequestConfig request as an argument that can be used in the interceptor for additional checks.
typescript
// ./src/util/interceptors.ts
...
export async function refreshTokenReqInterceptor(request: AxiosRequestConfig): Promise {
  // Read the latest data(auth token, refresh token and expiry)
  const db = await readFromDb();
  const data = mostRecent(db.installs);
  // If no data then continue with the request
  if (!data) return request;
  // Data used to calculate the expiry
  const expiresIn = data.expires_in;
  const createdDate = data.date;
  // Used npm library luxon to parse the date and calculate expiry
  const parsedCreateDate = DateTime.fromISO(createdDate.toString());
  const expirationDate = parsedCreateDate.plus();
  // Check if expired
  if (expirationDate < DateTime.now()) {
    await refreshAndUpdateDb(data);
  }
  return request;
}
refreshTokenRespInterceptor will be used during request responses . Refresh/retry the token only when the response being received is a 401 Unauthorized; this is what Passport returns when things go awry.
```typescript
// ./src/util/interceptors.ts
...
export async function refreshTokenRespInterceptor(error: AxiosError): Promise {
  const status = error.response ? error.response.status: null;
// Only refresh & retry the token on 401 Unauthorized, in case the access-token is
  //  invalidated before it expires, such as the signing key being rotated in an emergency.
