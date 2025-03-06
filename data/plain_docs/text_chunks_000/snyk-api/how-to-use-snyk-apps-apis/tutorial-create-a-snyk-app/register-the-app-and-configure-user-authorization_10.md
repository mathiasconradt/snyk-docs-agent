Earlier, we installed the popular axios package to handle API calls. We know that we'll need to make some repetitive calls to the same API, so we abstract some helper functions to make our code easily re-usable across the project. Create an APIHelpers.ts file in the util directory.
Before we fill that out, take note that while we are consistently hitting Snyk's API, we'll likely need to make requests against multiple versions of the API, depending on the endpoint's status in the migration from Snyk API v1 to Snyk REST API. One way we can handle this is by defining a TypeScript Enum and within our functions, swapping any necessary query parameters by comparing an argument to the enum's possible values.
Add the following content to a new file, or to APIHelpers.ts if you prefer; just make sure to export it for later use.
typescript
// ./interfaces/API.ts
export const enum APIVersion {
  V1 = "v1",
  REST = "rest",
}
We start by adding a single function to simplify our Apps' calls to the Snyk API. The function takes a tokenType (either bearer or token), the token itself, and an APIVersion (conveniently corresponding to the enum we just defined).
```typescript
// ./src/util/APIHelpers.ts
import qs from "qs";
import axios,  from "axios";
import  from "../app";
import  from "../interfaces/DB";
export function callSnykApi(tokenType: string, token: string, version: APIVersion): AxiosInstance {
  const contentType = version === APIVersion.V1 ? "application/json": "application/vnd.api+json";
const axiosInstance = axios.create({
    baseURL: $/$,
    headers: {
      "Content-Type": contentType,
      Authorization: $ $,
    },
  });
return axiosInstance;
}
```
Because this function is an AxiosInstance, we can easily talk to the API's different endpoints by calling .get(), .post(), or any other methods usually available to such an object.
We will see it in action by defining a second async function to retrieve our Snyk Apps' Organization ID:
```typescript
// ./src/util/APIHelpers.ts
...
export async function getAppOrgID(tokenType: string, accessToken: string): Promise<> {
  try {
    const clientId = CLIENT_ID;
    const result = await callSnykApi(tokenType, accessToken, APIVersion.REST)({
      method: "GET",
      url: /apps/$/orgs?version=2021-08-11~experimental,
    });
    // Fetch the first org
    const org = result.data.data[0];
    return {
      orgId: org.id,
    };
  } catch (error) {
    console.error("Error fetching org info: " + error);
    throw error;
  }
}
```
