One of the things we'll want to do is capture some information about the users that authorize our Snyk App. Again, a true implementation is left up to you. For the purposes of this tutorial, we'll use the excellent lowdb, a small local JSON database with low overhead.
We'll first create a new middleware function in app.ts to initialize a lowdb database file at ./db/ and tell the App constructor to call it.
```typescript
// ./src/app.ts
...
import * as path from "path";
import * as fs from "fs";
...
constructor(controllers: Controller[], port: number) {
  this.app = express();
  this.initDatabaseFile();
  this.initRoutes(controllers);
  this.server = this.listen(3000);
}
...
private initDatabaseFile() {
  try {
    const dbFolder = path.join(__dirname, "../db");
    dbPath = path.join(dbFolder, "db.json");
    console.log(Using db: $);
    if (!fs.existsSync(dbPath)) {
      if (!fs.existsSync(dbFolder)) {
        fs.mkdirSync(dbFolder);
      }
    }
  } catch (error) {
    console.error(error);
  }
}
...
export let dbPath: string;
export default App;
```
With the database initialization handled, we'll create some new helper methods to make reading, writing, and updating database entries simpler. Because this is a TypeScript project, we'll be creating interfaces or types around the data structures we'll be storing, so we'll create two files: ./src/interfaces/DB.ts and ./src/util/DB.ts:
bash
touch ./src/interfaces/DB.ts
mkdir -p ./src/util
touch ./src/util/DB.ts
Populate the interface file with an interface describing each piece of the authorization data we'll be storing, and a wrapping interface we can apply to the entire database:
```typescript
// ./src/interfaces/DB.ts
export interface DB {
  installs: AuthData[];
}
export interface AuthData {
  date: Date;
  userId: string;
  orgId: string;
  access_token: string;
  expires_in: 3600;
  scope: string;
  token_type: string;
  refresh_token: string;
}
```
In this tutorial, we'll need to perform three basic interactions with our database: read, write, and update.
In the file we created in ./src/util, create a function for each. Our read function will return a Promise with the database contents; the write function will take an object that matches the AuthData interface we just described; and the update function will attempt to rewrite an entry, returning a boolean denoting success or failure.
```typescript
// ./src/util/DB.ts
import  from "../app";
import  from "../interfaces/DB";
import  from "lowdb";
export async function readFromDb(): Promise {
  const adapter = new JSONFile(dbPath);
  const db = new Low(adapter);
  await db.read();
  // Return existing data or create a new DB
  return db.data ?? buildNewDb();
}
function buildNewDb(): DB {
  return ;
}
export async function writeToDb(data: AuthData): Promise {
  const existingData = await readFromDb();
  existingData.installs.push(data);
  // Creates a new DB if one doesn't already exists
  const adapter = new JSONFile(dbPath);
  const db = new Low(adapter);
  db.data = existingData;
  return db.write();
}
export async function updateDb(
  oldData: AuthData,
  newData: AuthData
): Promise {
  const adapter = new JSONFile(dbPath);
  const db = new Low(adapter);
  await db.read();
  if (db.data == null) {
    return false;
  }
  // After reading check if data exists in the database
  const installs = db.data?.installs || [];
const index = installs.findIndex((install) => install.date === oldData.date);
  if (index === -1) return false;
  installs[index] = newData;
  // Replace the existing install with new one
  db.data.installs = installs;
  await db.write();
  return true;
}
```
