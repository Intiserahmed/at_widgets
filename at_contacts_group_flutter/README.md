<img width=250px src="https://atsign.dev/assets/img/atPlatform_logo_gray.svg?sanitize=true">

[![pub package](https://img.shields.io/pub/v/at_contacts_group_flutter)](https://pub.dev/packages/at_contacts_group_flutter) [![](https://img.shields.io/static/v1?label=Backend&message=@Platform&color=<COLOR>)](https://atsign.dev) [![](https://img.shields.io/static/v1?label=Publisher&message=The%20@%20Company&color=F05E3E)](https://atsign.com) [![gitHub license](https://img.shields.io/badge/license-BSD3-blue.svg)](./LICENSE)

## Overview

The at_contacts_group_flutter package is for Flutter developers who want to add the group functionality to their apps on atPlatform.

This open source package is written in Dart, supports Flutter and follows the atPlatform's decentralized, edge computing model with the following features: 
- Cryptographic control of data access through personal data stores
- No application backend needed
- End to end encryption where only the data owner has the keys
- Private and surveillance free connectivity
- Create and manage groups

We call giving people control of access to their data “flipping the internet” and you can learn more about how it works by reading this [overview](https://atsign.dev/docs/overview/).

## Get started
There are three options to get started using this package.

### 1. Quick start - generate a skeleton app with at_app
This package includes a working sample application in the [Example](https://github.com/atsign-foundation/at_widgets/tree/trunk/at_contacts_group_flutter/example) directory that you can use to create a personalized copy using ```at_app create``` in four commands.

```sh
$ flutter pub global activate at_app 
$ at_app create --sample=<package ID> <app name> 
$ cd <app name>
$ flutter run
```
Notes: 
1. You only need to run ```flutter pub global activate``` once
2. Use ```at_app.bat``` for Windows

### 2. Clone it from GitHub
Feel free to fork a copy the source from the [GitHub repo](https://github.com/atsign-foundation/at_widgets). The example code contained there is the same as the template that is used by at_app above.

```sh
$ git clone https://github.com/atsign-foundation/at_widgets.git
```

### 3. Manually add the package to a project

Instructions on how to manually add this package to you project can be found on pub.dev [here](https://pub.dev/packages/at_contacts_group_flutter/install).

## How it works

This package utilises the [at_contact](https://pub.dev/packages/at_contact) dart package and provides the CRUD feature on group of contacts.

### Setup

#### Initialising:

The groups service along with the contacts service needs to be initialised with the root server.

```
initializeContactsService(rootDomain: AtEnv.rootDomain);
initializeGroupService(rootDomain: AtEnv.rootDomain);
```

### Usage

Navigating to the groups list is done simply by using:
```
Navigator.of(context).push(MaterialPageRoute(
	builder: (BuildContext context) => GroupList(),
));
```

## Open source usage and contributions
This is open source code, so feel free to use it as is, suggest changes or enhancements or create your own version. See [CONTRIBUTING.md](https://github.com/atsign-foundation/at_widgets/blob/trunk/CONTRIBUTING.md) for detailed guidance on how to setup tools, tests and make a pull request.
