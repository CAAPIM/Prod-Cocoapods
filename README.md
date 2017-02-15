MASFoundation is the core iOS framework of the Mobile SDK which belongs to the [CA Mobile App Services][mas.ca.com]. It is responsible to handle all the communication and authentication layer of the Mobile SDK helping developers to easily stablish a secure connection (TLS, Mutual SSL) to any CA Mobile API Gateway.

## Features

The MASFoundation framework comes with the following features:

- Authentication
    + OAuth
    + OIDC - OpenID Connect
    + BLE
    + Dynamic Client ID & Client Secret
    + QR Code
    + Social Login
    + Single Sign On
    + OTP - One Time Password
    + PKCE - Proof Key for Code Exchange
    + SSL Pinning with certificate, public key, or public key hash
- Dynamic SDK Configuration
- Enterprise Browser
- Geo Location

## How To Get Started

- [Download MASFoundation][download] 
- Read the ["Getting Started" guide][get-started] or watch some [video tutorials][videos]
- Check out our [documentation][docs] for more details and sample codes


## Communication

- If you *need help*, use [Stack Overflow][StackOverflow]. (Tag 'massdk')
- If you'd like to *ask a general question*, use [Stack Overflow][StackOverflow].
- If you *found a bug*, open an issue providing steps to reproduce it.
- If you *have a feature request*, open an issue.


## How You Can Contribute

Contributions are welcome and much appreciated. To learn more, see the [Contribution Guidelines][contributing].

## Installation

MASFoundation supports multiple methods for installing the library in a project.

Podfile

To integrate MASFoundation into your Xcode project using CocoaPods, specify it in your **Podfile:**

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'

pod 'MASFoundation'
```
Then, run the following command via the command prompt from the folder of your project:

```
$ pod install
```

## Documentation

For more documentation and API references please go to our [main website][docs]

## License

Copyright (c) 2016 CA. All rights reserved.

This software may be modified and distributed under the terms
of the MIT license. See the [LICENSE][license-link] file for details.

 [mag]: https://docops.ca.com/mag
 [mas.ca.com]: http://mas.ca.com/
 [get-started]: http://mas.ca.com/get-started/
 [docs]: http://mas.ca.com/docs/
 [blog]: http://mas.ca.com/blog/
 [videos]: https://www.ca.com/us/developers/mas/videos.html
 [StackOverflow]: http://stackoverflow.com/questions/tagged/massdk
 [download]: https://github.com/CAAPIM/iOS-MAS-Foundation/archive/master.zip
 [contributing]: https://github.com/CAAPIM/iOS-MAS-Foundation/blob/develop/CONTRIBUTING.md
 [license-link]: /LICENSE
