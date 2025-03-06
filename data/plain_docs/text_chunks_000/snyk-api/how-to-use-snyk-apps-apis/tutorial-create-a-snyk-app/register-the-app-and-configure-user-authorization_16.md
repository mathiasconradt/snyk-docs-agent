if (status === 401) {
    // Read the latest data(auth token, refresh token and expiry)
    const db = await readFromDb();
    const data = mostRecent(db.installs);
    // If no data then fail the retry
    if (!data) return Promise.reject(error);
const newAccessToken = await refreshAndUpdateDb(data);
// Use the new access token to retry the failed request
error.config.headers['Authorization'] = $ $;
return axios.request(error.config);
}
return Promise.reject(error);
}
Lastly, refreshAndUpdateDb refreshes the access token for a given database record and updates the database again before returning the newly refreshed token.typescript
// ./src/util/interceptors.ts
...
async function refreshAndUpdateDb(data: AuthData): Promise {
  // Create a instance for encryption and decryption
  const eD = new EncryptDecrypt(process.env[Envars.EncryptionSecret] as string);
  // Make request to refresh token
  const  = await refreshAuthToken(
    eD.decryptString(data.refresh_token),
  );
  // Update the access and refresh token with the newly fetched access and refresh token
  // along with the expiry and other required info
  await updateDb(data, {
    ...data,
    access_token: eD.encryptString(access_token),
    expires_in,
    refresh_token: eD.encryptString(refresh_token),
    token_type,
    scope,
    date: new Date(),
  });
return access_token;
}
With our interceptors defined, the only thing we need to do is update our callSnykApi function to utilize them. Interceptors are methods of the axiosInstance object, so we'll add them after the axios.create() call and before the function's return.typescript
// ./src/util/APIHelpers.ts
...
import {
  refreshTokenReqInterceptor,
  refreshTokenRespInterceptor,
} from "./interceptors";
...
export function callSnykApi(tokenType: string, token: string, version: APIVersion): AxiosInstance {
...
axiosInstance.interceptors.request.use(
    refreshTokenReqInterceptor,
    Promise.reject
  );
  axiosInstance.interceptors.response.use(
    (response) => response,
    refreshTokenRespInterceptor
  );
...
}
...
```
