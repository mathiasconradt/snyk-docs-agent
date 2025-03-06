NodeJS
A Snyk account

Configure the basics
To begin, create a directory to house the project somewhere on your device. From within the newly created directory, we'll initialize a package.json manifest for our application to keep track of our dependencies and ensure our project is portable:
Run npm init and follow the prompts. You can add as much or as little information as you want here. For now, the default options suffice.
Now that we have a place to save dependency information, use npm to install TypeScript as a development dependency:
npm install typescript --save-dev
At this point, TypeScript has been installed, but we'll need a configuration file to provide compilation options to the tsc binary. Create a TypeScript configuration file called tsconfig.json in the root of the project. Use the template that follows:
json
{
  "compilerOptions": {
    "target": "es6",
    "module": "commonjs",
    "declaration": true,
    "sourceMap": true,
    "moduleResolution": "node",
    "outDir": "./dist",
    "rootDir": "./src",
    "strict": true,
    "skipLibCheck": true,
    "esModuleInterop": true
  },
  "exclude": [
    "./tests",
    "./dist"
  ]
}
The options we've provided tell TypeScript to emit ES6 JavaScript, which type of module code to generate, and whether or not to provide a corresponding source map for the compiled files, and specify a few other handy options. For a complete overview of the possible options, see Intro to the TSConfig Reference in the Typescript documentation.
For the purposes of this tutorial, the most noteworthy options we've set are rootDir and outDir. These options describe where our source .ts files and our compiled .js files, respectively, live within our project. Create the directories referenced by the setting values:
bash
mkdir ./dist
mkdir ./src
