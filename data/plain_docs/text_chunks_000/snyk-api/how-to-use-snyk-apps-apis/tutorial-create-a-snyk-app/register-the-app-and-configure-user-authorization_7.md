Based on the preceding information, our Snyk App has some new requirements. We will need to do a few things within our TypeScript app to successfully authorize a Snyk user account with our Snyk app:

Send API requests and process responses.
Keep track of data, like token expiry.
Encrypt and decrypt secret data.
Turn authorization codes into authorization tokens.
Refresh those authorization tokens.
Handle errors and inform users of authorization success or failure.

From here on, we'll be doing a lot of refactoring in our Snyk App and we'll be jumping into a number of different files. To help make the process easier to follow, this tutorial uses the convention of adding a commented filepath to the first line of code snippets, describing where they belong. In your own code; these comments aren't necessary.
We'll also add a number of new packages to help address our new requirements. For convenience, go ahead and run the following in the root of your project:
```bash
npm install --save passport \
    passport-oauth2 \
    @snyk/passport-snyk-oauth2 \
    @types/passport \
    @types/uuid \
    express-session \
    axios \
    uuid \
    ejs \
    jwt-decode \
    cryptr \
    "github:dankreiger/lowdb#chore/esm-cjs-hybrid-WITH-LIB" # This allows lowdb to be used with commonjs modules
    luxon;
npm install --save-dev @types/cryptr \
    @types/ejs \
    @types/express-session \
    @types/luxon \
    @types/passport \
    @types/passport-oauth2 \
    @types/uuid
```
