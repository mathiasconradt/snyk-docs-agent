The expires field is optional. If you need a permanent ignore, omit the field.

Ignore a specific vulnerability for a given path:
ignore:
  SNYK-JS-BSON-561052:
    - mongodb > mongodb-core > bson:
        reason: None given
        expires: '2020-06-19T20:36:54.553Z'

Ignore a vulnerability for all paths:
ignore:
  SNYK-JS-BSON-561052:
    - '*':
        reason: None Given
        expires: 2020-04-04T17:33:45.004Z
Ignore a specific vulnerability on multiple paths:
ignore:
  SNYK-JS-DOTPROP-543489:
    - configstore > dot-prop:
        reason: None given
        expires: '2020-06-19T20:36:54.553Z'
    - snyk > configstore > dot-prop:
        reason: None given
        expires: '2020-06-19T20:36:54.553Z'
