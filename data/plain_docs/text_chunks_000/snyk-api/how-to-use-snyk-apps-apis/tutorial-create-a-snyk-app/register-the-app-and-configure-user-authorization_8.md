Application configuration
Application config (for example, client secrets, api tokens, other config, and so on) should generally be stored securely and kept outside of the App itself. However, for brevity, this tutorial adds the configuration info as exportable constants in the App.ts file and leaves the actual implementation details to you. These are values that the Snyk App references in many different places.
```typescript
// ./src/app.ts
...
import  from "uuid";
...
export const APP_BASE = "https://app.snyk.io";
export const API_BASE = "https://api.snyk.io";
export const CLIENT_ID = "[replace with your client id]";
export const CLIENT_SECRET = "[replace with your client secret]";
export const ENCRYPTION_SECRET = uuid4();
export const REDIRECT_URI = "https://localhost:3000/callback";
export const TOKEN_URL = "/oauth2/token";
export const AUTHORIZATION_URL = "/oauth2/authorize";
export const SCOPE = "apps:beta";
export const STATE = true;
...
```
