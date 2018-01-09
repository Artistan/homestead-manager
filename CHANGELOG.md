# Changelog

## 1.6.1
### Bug fixes
* Retain tmp hosts file and fix a bug where powershell mv does not move folder contents, in that context it's moving a file. [[#157](https://github.com/artistan/homestead-manager/issues/157)]

[Full diff](https://github.com/artistan/homestead-manager/compare/v1.6.0...v1.6.1)


## 1.6.0
### Features
* splits hostnames across many lines [[#67](https://github.com/artistan/homestead-manager/pull/103)]

### Bug fixes
* show description for hsmanager when vagrant list-commands is triggered [[#105](https://github.com/artistan/homestead-manager/pull/105)]

### Miscelaneous
* extract old vagrant version compatibility code into util method [[#97](https://github.com/artistan/homestead-manager/pull/97)]
* migrate HostsFile code into its own class [[#98](https://github.com/artistan/homestead-manager/pull/97)]

[Full diff](https://github.com/artistan/homestead-manager/compare/v1.5.0...v1.6.0)


## 1.5.0
### Features
* hsmanager now runs *before* provisioning takes place, on `up` action [[#73](https://github.com/artistan/homestead-manager/issues/73)]

### Bug fixes
* properly detect hosts file location on Windows guests [[#67](https://github.com/artistan/homestead-manager/pull/67)]
* do not add host if IP cannot be determined [[#85](https://github.com/artistan/homestead-manager/pull/85)]
* force moving of hosts file on Linux guests [[#93](https://github.com/artistan/homestead-manager/pull/93)]
* allow top-level config options (eg. `ip_resolver`) to propagate to machine configs [[#91](https://github.com/artistan/homestead-manager/issues/91)]

### Miscelaneous
* add passwordless sudo instructions to README [[#95](https://github.com/artistan/homestead-manager/pull/95)]

[Full diff](https://github.com/artistan/homestead-manager/compare/v1.4.0...v1.5.0)


## 1.4.0
### Features
* supports vagrant 1.5 [[#80](https://github.com/artistan/homestead-manager/issues/80), [#81](https://github.com/artistan/homestead-manager/pull/81)]
* only updates hosts file if contents have changed [[#78](https://github.com/artistan/homestead-manager/pull/78)]
* custom ip resolver now has access to the machine whose hosts file is being updated [[#62](https://github.com/artistan/homestead-manager/pull/62)]

### Bug fixes
* custom IP resolver result no longer ignored [[#57](https://github.com/artistan/homestead-manager/pull/57)]
* when multiple private_networks are configured, the first one is used [[#64](https://github.com/artistan/homestead-manager/pull/64)]
* destroyed machines are now removed from hosts file [[#52](https://github.com/artistan/homestead-manager/pull/52)]

[Full diff](https://github.com/artistan/homestead-manager/compare/v1.3.0...v1.4.0)


## 1.3.0
### Features
* allow defining a custom IP resolver block [[#15](https://github.com/artistan/homestead-manager/pull/15)]
* handle removing destroyed machines from hosts file (currently only works with `include_offline = true`) [[#45](https://github.com/artistan/homestead-manager/pull/45)]
* attempt to elevate privileges when needed in Windows hosts [[#48](https://github.com/artistan/homestead-manager/pull/48)]

### Bug fixes
* `--provider` command-line option now finds machines as expected [[#46](https://github.com/artistan/homestead-manager/pull/46)]
* uses proper `hosts` file location in Windows under cygwin [[#49](https://github.com/artistan/homestead-manager/pull/49)]

### Miscelaneous
* MIT license added to gemspec

[Full diff](https://github.com/artistan/homestead-manager/compare/v1.2.3...v1.3.0)
