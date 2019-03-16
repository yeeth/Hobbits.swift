# Hobbits.swift

[![Build Status](https://travis-ci.com/yeeth/Hobbits.swift.svg?branch=master)](https://travis-ci.com/yeeth/Hobbits.swift) [![License](https://img.shields.io/github/license/yeeth/Hobbits.swift.svg)](LICENSE)

Ethereum Wire Protocol 0.1 Proposal written in Swift, based on the Whiteblock [proposal](https://github.com/Whiteblock/hobbits).

## Getting Started

This library is built with the consideration of keeping it easy to include in your projects.

### Import

The `Hobbits.swift` package can be easily imported into your project using the `swift package manager`.

```swift
dependencies: [
    .package(url: "https://github.com/yeeth/Hobbits.swift.git", from: "0.1.0"),
],
targets: [
    .target(name: "MyTarget", dependencies: ["Hobbits"]),
]
```

## Usage

```swift

import Hobbits

// Deserialize a request string
let request = try Request(serializedData: "EWP 0.1 HELLO none none 0 5\n12345")

```

## Authors

* **Dean Eigenmann** - [decanus](https://github.com/decanus)

See also the list of [contributors](https://github.com/yeeth/Hobbits.swift/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
