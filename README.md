# FlowUs

An all-in-one social media network + fitness tools like a workout and jogging tracker.

Written in SwiftUI and using the VODOO architecture: https://swiftuivoodo.com/

## Setup

In order to ensure better and more readable code ensure you have swiftformat and swiftlint installed:

```
$ brew install swiftformat
$ brew install swiftlint

# If you want firebase run the following commands

$ mkdir FlowUs/Firebase/Dev
$ mkdir FlowUs/Firebase/Production
$ mkdir FlowUs/Firebase/Staging

# For fastlane create the Appfile

$ touch fastlane/Appfile
```

## Deployment

```
# increase_build determines if build number should be raised or not
# [lane] e.g. ios dev

fastlane [lane]
```

## License

FlowUs (c) 2021 Lucas Goldner and contributors

SPDX-License-Identifier: AGPL-3.0
