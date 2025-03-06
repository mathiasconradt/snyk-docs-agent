Commit messages
Commit messages must follow the Angular-style commit format (but excluding the scope):
```
fix: minified scripts being removed
Also includes tests
```
This allows for the automatic change log to generate correctly.
Commit types must be one of the following:

feat: A new feature
fix: A bug fix
docs: Documentation only changes
test: Adding missing tests
chore: Changes to the build process or auxiliary tools and libraries such as documentation generation
refactor: A code change that neither fixes a bug nor adds a feature
style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons and other similar changes)
perf: A code change that improves performance

To release a major update you must add BREAKING CHANGE: to the start of the body and the detail of the breaking change.
