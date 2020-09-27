
<p align="center">
    <img alt="HeySap" title="HeySap" src="Assets/logo.svg" height="200">
</p>
<h1 align="center">HeySap</h1>

Sample Command Line Tool using Swift Argument Parser

[![SwiftPM](https://img.shields.io/badge/SPM-Linux%20%7C%20iOS%20%7C%20macOS%20%7C%20watchOS%20%7C%20tvOS-success?logo=swift)](https://swift.org)
[![Twitter](https://img.shields.io/badge/twitter-@brightdigit-blue.svg?style=flat)](http://twitter.com/brightdigit)
![GitHub](https://img.shields.io/github/license/brightdigit/HeySap)
![GitHub issues](https://img.shields.io/github/issues/brightdigit/HeySap)

[![macOS](https://github.com/brightdigit/HeySap/workflows/macOS/badge.svg)](https://github.com/brightdigit/HeySap/actions?query=workflow%3AmacOS)
[![ubuntu](https://github.com/brightdigit/HeySap/workflows/ubuntu/badge.svg)](https://github.com/brightdigit/HeySap/actions?query=workflow%3Aubuntu)
[![Travis (.com)](https://img.shields.io/travis/com/brightdigit/HeySap?logo=travis&?label=travis-ci)](https://travis-ci.com/brightdigit/HeySap)
[![Bitrise](https://img.shields.io/bitrise/851943f7407ad016?logo=bitrise&?label=bitrise&token=jJAyoyJ-teNSI-9aDqJKSw)](https://app.bitrise.io/app/851943f7407ad016)
[![CircleCI](https://img.shields.io/circleci/build/github/brightdigit/HeySap?logo=circleci&?label=circle-ci&token=ee241fe22c5f6330a56357965bc13dbf2bcafc63)](https://app.circleci.com/pipelines/github/brightdigit/HeySap)

[![Codecov](https://img.shields.io/codecov/c/github/brightdigit/HeySap)](https://codecov.io/gh/brightdigit/HeySap)
[![CodeFactor Grade](https://img.shields.io/codefactor/grade/github/brightdigit/HeySap)](https://www.codefactor.io/repository/github/brightdigit/HeySap)
[![codebeat badge](https://codebeat.co/badges/c47b7e58-867c-410b-80c5-57e10140ba0f)](https://codebeat.co/projects/github-com-brightdigit-HeySap-main)
[![Code Climate maintainability](https://img.shields.io/codeclimate/maintainability/brightdigit/HeySap)](https://codeclimate.com/github/brightdigit/HeySap)
[![Code Climate technical debt](https://img.shields.io/codeclimate/tech-debt/brightdigit/HeySap?label=debt)](https://codeclimate.com/github/brightdigit/HeySap)
[![Code Climate issues](https://img.shields.io/codeclimate/issues/brightdigit/HeySap)](https://codeclimate.com/github/brightdigit/HeySap)
[![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)

```bash
$ hey -h
USAGE: hey [--verbose] [--salutation <salutation>] [<name>]

ARGUMENTS:
  <name>                     (default: Sap)

OPTIONS:
  --verbose
  --salutation <salutation>  (default: hey)
  -h, --help                 Show help information.

$ hey Leo --verbose --salutation=ciao
Ciao Leo, How's Your Day?
```

# Introduction

This is a very simple command line Swift Package used to demonstrate the Swift Argument Parser.

* An example of optional **Arguments**
* Using eums in **Options**
* How to use **Flags** for verbose information

# Installation

The simplest way to install this application is via **mint**. Install **mint** via homebrew then run:

```bash
$ mint install brightdigit/HeySap
```

# Usage 

## Specifying Your Name via _Arguments_

Swift Argument Parser will use the last `String` as the name argument for what to call you:

```bash
$ hey Leo
Hey Leo!
```

Therefore if you specify multiple names, it will simply use the last argument, which is not an option or flag (i.e. doesn't start with `--`):

```bash
$ hey Tim Leo  
Hey Leo!
```

If you specificy no arguments for the name, then the assumed name is _Sap_:

```bash
$ hey
Hey Sap!
```

## Changing Your Salutation _Option_

You can choose from a variety of options for your salutation. Currently, **HeySap** supports:

* `hey` = "Hey" [**default**]
* `hello` = "Hello"
* `ciao` = "Ciao"
* `buongiorno` = "Buongiorno"
* `cheers` = "Cheers"
* `greetings` = "Greetings"
* `hi` = "Hi"
* `howdy` = "Howdy"
* `welcome` = "Welcome"
* `bonjour` = "Bonjour"
* `sup` = "Sup 🤜" (i.e. _Sup_ with a fist pump 🤜)
* `heeey` = "Heeey 😎" (i.e. _Heeey_ with sunglass emoji 😎)

To change the salutation from the default _Hey_ simply pass the option `--salutation=`:

```bash
$ hey World --salutation=hello
Hello World!
```

or

```bash
$ hey Dude --salutation=heeey
Heeey 😎 Dude!
```

If you supply no salutation, you will get the _default_ salutation, _Hey_:

```bash
$ hey World
Hey World!
```

For more information on salutions, please refer to [the code documentation page here](Documentation/Reference/Salutation.md).

## _Flags_ for More Verbose Greetings

If you wish _HeySap_ to offer a more verbose greeeting, simply use the flag `--verbose`. With the `--verbose` flag, you will receive an extended `How's your day?`:

```bash
$ hey --verbose
Hey Sap, How's Your Day?
```

By combining all these components, you can build something like this:

```bash
$ hey Maximiliano --salutation=buongiorno --verbose
Buongiorno Maximiliano, How's Your Day?
```

# Support 

If you have any questions or issues with the application, feel free to post [an issue here.](issues) 

# License 

This code is distributed under the MIT license. See the [LICENSE](LICENSE) file for more info.
