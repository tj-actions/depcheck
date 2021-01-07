[![CI](https://github.com/tj-actions/depcheck/workflows/CI/badge.svg)](https://github.com/tj-actions/depcheck/actions?query=workflow%3ACI)

depcheck
--------

Analyze node project dependencies using [depcheck](https://github.com/depcheck/depcheck).

![sample](./sample.png)

Usage
-----

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: dep-check
        uses: tj-actions/depcheck@v7
        with:
          ignores: 'eslint,babel-*'
```

* Free software: [MIT license](LICENSE)



Inputs
------

|   Input        |    type     |  required     |  default             | description                   |
|:-------------:|:-----------:|:-------------:|:---------------------:|:-----------------------------:|
| `dir`           |  `string`     |    `false`    | `.`                 | The directory to run [depcheck](https://github.com/depcheck/depcheck#readme) |
| `ignores`       |  `string`     |    `false`    |                     | Packages to ignore            |
| `version`       |  `string`     |    `false`    | `1.3.1`             | Version of [depcheck](https://github.com/depcheck/depcheck/tags)           |


Features
--------
* Runs dependency checks using a specified location.
* Ignores specific packages.

Credits
-------

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).



Report Bugs
-----------

Report bugs at https://github.com/tj-actions/depcheck/issues.

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your workflow that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.
