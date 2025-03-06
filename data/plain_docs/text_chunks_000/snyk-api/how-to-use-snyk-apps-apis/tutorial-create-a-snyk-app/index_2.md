Now that we have the basic parameters in place, we'll create a simple Hello World by creating the file ./src/index.ts.
```
const world = 'world';
export function hello(world: string = world): string {
  return Hello $!;
}
```
Now we can confirm that everything is wired up correctly. Run npx tsc to compile the project.
If everything is successful, the project tree looks like this:
my-snyk-app/
 - dist/
   - index.d.ts
   - index.js
   - index.js.map
 - src/
   - index.ts
 - node_modules/
   - <lots of things here>
 - package-lock.json
 - tsconfig.json
The tsc program compiled our source TypeScript file into ES6 JavaScript and provided a source map for debugging.

The compiler can also be put into watch mode to continually poll your .ts files for changes: npx tsc -w
