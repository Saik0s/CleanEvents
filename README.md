<h3 align="center">
  <img src="assets/logo.png" alt="CleanEvents Logo" width=500 />
</h3>

# CleanEvents

<h3 align="center">
  :construction:Under Development:construction:
</h3>

[![GitHub release](https://img.shields.io/github/release/Saik0s/CleanEvents.svg)](https://github.com/Saik0s/CleanEvents/releases)
[![License](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://github.com/Saik0s/CleanEvents/blob/master/LICENSE)
[![Build Status](https://img.shields.io/travis/Saik0s/CleanEvents/master.svg?style=flat)](https://travis-ci.org/Saik0s/CleanEvents)
[![codebeat badge](https://codebeat.co/badges/4d4c151e-2af3-40cc-8514-a98b8e6c1d8a)](https://codebeat.co/projects/github-com-saik0s-cleanevents-master)
[![codecov](https://codecov.io/gh/Saik0s/CleanEvents/branch/master/graph/badge.svg)](https://codecov.io/gh/Saik0s/CleanEvents)

`CleanEvents` is my minimum viable product for experimenting with different approaches in software architecture. The primary goal of this project is to create and combine solutions which in my opinion are the most accurate in meeting my requirements.  Overall this project must be like a draft with solutions for the most common problems so that it can be used as a start point in any application development process. It must follow SOLID and DRY principles, be very easy to read, clean, devoid of ambiguity, easily scalable in an obvious way, developed using TDD approach and at the same time provide perfect development experience.

If automatizing some steps can create required solutions - the developer has to automize implementation process razer then implement it by hands. I believe that such approach will help developers never to lose their enthusiasm while working on a long-term project and as a result, it will help to keep a high quality of their solutions on every stage of the project.

## Prerequisites

First of all, you need to have `bundler` ruby gem and `homebrew` CLI installed on your system. Then you can install dependencies described in `Brewfile` and `Gemfile`.
`Cocoapods` gem is used to manage application dependencies.

To install bundler simply run the following command in the terminal:

```sh
gem install bundler
```

To install `Homebrew` run:

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Downloading the Code

The following commands will clone project and set up all required dependencies.

```sh
git clone https://github.com/Saik0s/CleanEvents.git
cd CleanEvents
Scripts/setup
```

## Getting Started

As soon as `setup` script finish installation and configuration of all required dependencies you will be able to build and run project using [BUCK](https://buckbuild.com/)

To build the project simply run:

```sh
buck build app 
```

Currently, the project is compatible with `Xcode 9` and later only, as it's `Swift 4`. I prefer to use `Appcode` mostly because it dramatically simplifies refactoring and code generation. Also, there are a lot of useful plugins which can be easily installed from the builtin plugins browser. Furthermore, Appcode itself has a wide range of preferences and configurations.

`Buck` config files can help with the understanding of the project structure and dependencies it uses. Also, there is no need to store Xcode project files in the repository - `buck` can easily generate them using `project` subcommand if need.

`Swiftlint` CLI helps to keep the same code style among the project and can point to different mistakes or suggest a better approach in some cases. Also it can fix some trivial issues by itself.

`Sourcery` generates code using templates. It takes care of trivial solutions and lets developers focus on real problems. For example, it can generate `Equatable` protocol implementation and updates it every time you change related struct for example.

This project does not use storyboards, xibs, and auto layouts. UI is created using `Texture` framework from Pinterest (ex `AsyncDisplayKit` from Facebook). It is built on top of UIKit and provides an ability to create smooth interfaces, even if it is very complex. Instead of slow UIKit’s Auto Layout, it implements own solution hardly inspired by CSS Flexbox.

## Installing

To install and run application on simulator use:

```sh
buck install app -r -e -n "iPhone 8"
```

To regenerate project file run:

```sh
buck project
```

## Running unit tests

To run tests use:

```sh
buck test
```

<!---
## Deployment

`Fastlane` is used to automate whole deployment process including test builds and app store builds with iTunes processing status checking.
--->

## Questions

If you have questions about any aspect of this project, please feel free to
[open an issue](https://github.com/Saik0s/CleanEvents/issues/new). I would love to hear from you!

## Contributing

Any pull requests are welcome.

## Commit emoji convention

* [gitmoji](https://github.com/carloscuesta/gitmoji/)

## Versioning

I use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/Saik0s/CleanEvents/tags).

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for the details.

## Acknowledgments

* [The Clean Architecture by Uncle Bob](https://8thlight.com/blog/uncle-bob/2012/08/13/the-clean-architecture.html)
* [BUCK - high-performance build tool](https://buckbuild.com/)
* [Texture - iOS framework built on top of UIKit](http://texturegroup.org/)
* [RxSwift Community](https://github.com/RxSwiftCommunity)
* [Swiftlint - A tool to enforce Swift style and conventions.](https://github.com/realm/SwiftLint)
* [Sourcery - Meta-programming for Swift](https://github.com/krzysztofzablocki/Sourcery)
