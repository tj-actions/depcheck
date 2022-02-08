[![Codacy Badge](https://api.codacy.com/project/badge/Grade/c7fa2bafe53a46159199af71b805b312)](https://app.codacy.com/gh/tj-actions/depcheck?utm_source=github.com\&utm_medium=referral\&utm_content=tj-actions/depcheck\&utm_campaign=Badge_Grade_Settings)
[![CI](https://github.com/tj-actions/depcheck/workflows/CI/badge.svg)](https://github.com/tj-actions/depcheck/actions?query=workflow%3ACI) 
[![Update release version.](https://github.com/tj-actions/depcheck/actions/workflows/sync-release-version.yml/badge.svg)](https://github.com/tj-actions/depcheck/actions/workflows/sync-release-version.yml) 
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fdepcheck%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+depcheck+path%3A.github%2Fworkflows+language%3AYAML\&s=\&type=Code)

## depcheck

Analyze node project dependencies using [depcheck](https://github.com/depcheck/depcheck).

![sample](./sample.png)

## Usage

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: dep-check
        uses: tj-actions/depcheck@v7.2
        with:
          ignores: 'eslint,babel-*'
```

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Inputs

|   Input        |    type     |  required     |  default             | description                   |
|:-------------:|:-----------:|:-------------:|:---------------------:|:-----------------------------:|
| `dir`           |  `string`     |    `false`    | `.`                 | The directory to run [depcheck](https://github.com/depcheck/depcheck#readme) |
| `ignores`       |  `string`     |    `false`    |                     | Packages to ignore            |
| `version`       |  `string`     |    `false`    | `1.3.1`             | Version of [depcheck](https://github.com/depcheck/depcheck/tags)           |

## Features

*   Runs dependency checks using a specified location.
*   Ignores specific packages.

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).

## Report Bugs

Report bugs at https://github.com/tj-actions/depcheck/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.
