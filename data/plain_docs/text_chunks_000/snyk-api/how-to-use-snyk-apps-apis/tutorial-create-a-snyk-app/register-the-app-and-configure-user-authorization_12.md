We've laid the groundwork; now it's time to start doing things.
As discussed in a previous section, our app needs to send would-be authorizers to a specific token URL. We'll add an /auth route in our Snyk App and add some authentication middleware to Express. For this, we'll use the excellent passportjs, the passport-oauth2 authentication strategy, along with Snyk's @snyk/passport-snyk-oauth2. passport and its friends handle a large portion of what would otherwise be a lengthy and complicated authentication process.
Because passport takes its encapsulation philosophy seriously, we'll need to handle everything else about the auth process. We need to set up an instance of the passport strategy we'll be using. We'll put our database helpers from earlier to use here as well, adding an entry into our database when we receive successful authorization.
It's worth taking the time to go over this file and make sure you've understood everything it's doing.
```typescript
// ./util/OAuth2Strategy.ts
import type  from "express";
import axios,  from "axios";
import OAuth2Strategy,  from "passport-oauth2";
import SnykOAuth2Strategy,  from "@snyk/passport-snyk-oauth2";
import  from "uuid";
import jwt_decode from "jwt-decode";
import  from "../util/encrypt-decrypt";
import  from "../util/db";
import  from "../interfaces/db";
import  from "../util/APIHelpers";
// This just wraps up the tutorial's app config to avoid writing
// each config variable.
// You'd likely want to parse environment variables or something.
import * as config from "../app";
// Set up a new type definition for the parameters we'll be sending with our auth.
type Params = {
  expires_in: number;
  scope: string;
  token_type: string;
};
export function getOAuth2(): SnykOAuth2Strategy {
  // User can pass their own implementation of fetching the profile
  // by providing the profileFunc implementation. Snyk OAuth2 strategy
  // will call this function to fetch the profile associated with request
  const profileFunc: ProfileFunc = function(accessToken: string) {
    return axios.get("https://api.snyk.io/v1/user/me", {
      headers: {
        "Content-Type": "application/json; charset=utf-8",
        Authorization: bearer $,
      },
    });
  };
// Note*: the value of version being manually added
  return new SnykOAuth2Strategy(
    {
      authorizationURL: $$,
      tokenURL: $$,
      clientID: config.CLIENT_ID,
      clientSecret: config.CLIENT_SECRET,
      callbackURL: "http://localhost:3000/callback",
      state: true,
      pkce: true,
      passReqToCallback: true,
      profileFunc,
    },
    async function (
      req: Request,
      access_token: string,
      refresh_token: string,
      params: Params,
      profile: AxiosResponse,
      done: VerifyCallback
    ) {
      try {
        // Notify passport that all work, like the storing
        // of data in the DB, has been completed
        const userId = profile.data.id;
        const  = params;
    const  = await getAppOrgID(token_type, access_token);
    const ed = new EncryptDecrypt(config.ENCRYPTION_SECRET as string);

    await writeToDb({
      date: new Date(),
      userId,
      orgId,
      access_token: ed.encryptString(access_token),
      expires_in,
      scope,
      token_type,
      refresh_token: ed.encryptString(refresh_token),
    } as AuthData);
  } catch (error) {
    return done(error as Error, false);
  }
  return done(null, );
}

);
}
```
