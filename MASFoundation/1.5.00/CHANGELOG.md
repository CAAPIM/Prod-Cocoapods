# Version 1.5.00

NOTE: From this version on the frameworks changed to Dynamic instead of Static library

### Bug fixes
- In the implicit authentication flow, errors are now only reported once during the authentication flow or actual result of the endpoint. Previously, the original request was notified for every error that happened during the authentication flow. [DE311261]
- Logout and login notifications now broadcast correctly. Previously, notifications were not sent at the correct time, and the SDK also represented incorrect status for these activities. [DE310488]
- BLE authentication now restarts when authorization is denied. Previously, BLE authentication reported authorization was in progress and did not restart, even after the device denied authorization. [DE310490]
- The SDK now generates the correct URL for external API requests (non Gateway request), when the Gateway has an instance modifier. [DE310249]
- `MASMQTTClient` now connects to a public broker without requiring the username, and password. Previously, `MASMQTTClient` was forcing all brokers to provide user credentials. [DE306921]
- The SDK now properly validates the request response type as defined. Previously, the SDK accepted mismatch content-type for the 200 response as a valid response. [US349551]
- The SDK no longer requires Keychain Sharing to be enabled in Xcode. However, to establish SSO across multiple applications, Keychain Sharing must be enabled. [US320771]
- Mobile SDK now only validates against the leaf certificate for SSL pinning validation by default. The configuration can be changed to validate against entire certificate chain through `MASSecurityConfiguration`. [US374086]

### New Features
- Mobile SDK introduces an ability to configure security configuration for external APIs (such as SSL pinning), so that Mobile SDK can securely connect to external API (other than primary Gateway). [US344780]
- The SDK handles multiple concurrent API requests with proper authentication processes. [US362800]
- The SDK supports dynamic framework. All you need to do is update your Xcode settings. [US367604]
- The SDK introduces more flexible and extensible authentication with different types of credentials. For details, see `MASAuthCredentials`. [US349497]
- The SDK introduces the ability to digitally sign the request as JWT. See `MASClaims` to sign the request. [US313137]

### Deprecated Methods
- `[MAS setUserLoginBlock:]` is deprecated.  Please use `[MAS setAuthCredentials:]` block to perform implicit authentication with `MASAuthCredentials` object.


# Version 1.4.00

### Bug fixes
- The BLE OS prompt was displaying on SDK initialization. Now the prompt appears only when the SDK actually accesses BLE services.  [US284889]
- Fixes to nullability warnings on public classes. [US284893]
- [MAS gatewayIsReachable] boolean property always returned true. [DE272367]
- SDK was unable to make CRUD operations after SDK initialization because "The network is not started yet." [DE282382]
 
### New features
- Introduces new way of dynamically initializing SDK with enrollment URL. With this feature, application or system administrator can generate an URL specified to a user, so that the user can initialize SDK without having an application with built in `msso_config.json` deployed with the application. Server configuration and application level's implementation is required. [US287274]
- Introduces new way of performing social login through SDK.  SDK now performs social login with `SFSafariViewController` to ensure better security, and adopt morden way of performing oAuth web authentication. Please refer to `MASAuthorizationResponse` class to understand the new flow of social login with `SFSafariViewController`.[US279228]
- Introduces new protection on authorization process with Proof Key for Code Exchange by OAuth Public Clients.  By default, PKCE process is enabled, and it can be disabled; however, it is strongly recommended to not disable it unless there is a specific use case. [US269506]

### Deprecated Methods
- `MASSocialLogin` class is deprecated. Please use `SFSafariViewController` to display social login web URL from `MASAuthenticationProvider` and use `MASAuthorizationResponse` class to handle incoming response from `SFSafariViewController`. [US279228]

# Version 1.3.01

### Bug fixes 
- Fixes an issue with dynamically switching between msso config's when one of the configs has location enabled and another msso config has location disabled. If the user declines location services permission when first opening the app, the app would hang when switching msso's back to the config that allowed location. [DE230814]
- Improved error handling in the case of missing parameters. [US240398]
- Added nullability annotations to certain interfaces. [US240400]
- When changing the master client key , the sdk now recognizes the change. The sdk will clean out the client id, client secret, access token, refresh token. The client will attempt to re-authenticate with the id token. This addresses adding scope to an existing api. [US240404]
- Fixed a bug where Mobile SDK attempted to initialize with invalid configuration file and caches the invalid configuration. [DE244332][DE255042]
- Changed the client id format for MQTT protocol. [US263626]
- ```[[MASDevice currentDevice] clearLocal]``` method will remove all credentials in both local and shared keychain storage.

### New features
- Fingerprint Session Lock feature implementation.  User session can now be locked and unlocked with Fingerprint and/or device passcode (device local authentication). [US246928]
- Client certificate process is newly added.  Mobile SDK will automatically detect the validity of the client certificate and renew it when necessary. [US240412]
- MASAuthenticationProviders can now be retreived as needed through ```[MASAuthenticationProviders retrieveAuthenticationProvidersWithCompletion:] ```.

# Version 1.2.03

### Bug fixes
- Fix the issue where [MAS gatewayISREachable] static property always returns true.
- Fix the bluetooth permission prompt displays everytime SDK is initialized.  Now bluetooth permission prompt will only display when the bluetooth is actually being used.

### New features

-

### Deprecated methods

-

# Version 1.2.01

### Bug fixes
 
- Added listAttibutes method to MASObject in MASFoundation framework. [MCT-436]
- The MASUser object isAuthenticated property returned wrong value for other user objects retrieved from MASIdentityManagement. [MCT-469]
- The isCurrentUser flag was not determined dynamically when retrieved from MASIdentityManagement. MASFoundation will determine isCurrentUser flag dynamically by [MASUser currentUser] and/or user retrival from MASIdentityManagement. [MCT-434]
- When passing "cancel" as YES into MASBasicCredentialBlock, SDK was failing to notify the original caller of the request; it was only notifying the completion block of MASBasicCredentialBlock. [MCT-439]
- Version number and version string returned incorrect values. [MCT-437]
- MSSO is not handled properly for explicit authentication method. [MCT-504]
- A MASFoundation app stops working if geolocation is enabled (location_enabled) in the JSON configuration file and the user selects "Don't Allow" at the allow access to location prompt. Now, the app continues to work, but returns errors from APIs requiring the geolocation information. [MCT-335]


### New features

None.

### Deprecated methods

None.

# Version 1.2.00

### Bug fixes
 
- Handling multiple response types with one session manager.
- SDK offline initialization: a bug where SDK cannot be initialized while the device has no network connectivity is fixed.  SDK now can be used for secure local storage.

### New features

- [One-Time Password (OTP)](http://mas.ca.com/docs/ios/1.2.00/guides/#create-your-own-otp-dialog) feature for accessing APIs
- ```MASSocialLogin``` class is newly added for developers to handle social login on [customized login dialog](http://mas.ca.com/docs/ios/1.2.00/guides/#create-your-own-login-dialog).

### Deprecated methods

- ```[[MASDevice currentDevice] logOutDeviceAndClearLocal:completion:]``` is deprecated to avoid confusion from developers and to align with Android SDK.  Please use ```[[MASUser currentUser] logoutWithCompletion:]``` method to log-out the authenticated user.
- ```[[L7SClientManager sharedManager] logoutDevice]``` behaviour of the method is changed for this method for above reason. 
- ```[MAS setDeviceRegistrationBlock:]``` is completely deprecated.  All registration related process will be done as part of ```[MAS setUserLoginBlock:]``` or ```[MASUser loginWithUsername:password:completion:]```.
- ```[MAS setDeviceRegistrationType:]``` is renamed to ```[MAS setGrantFlow:]```.  
- ```[MAS deviceRegistrationType]``` is renamed to ```[MAS grantFlow]```.
- ```[[MASUser currentUser] logoffWithCompletion:]``` is renamed to ```[[MASUser currentUser] logoutWithCompletion:]```.
- ```MASDeviceRegistrationType``` is renamed to ```MASGrantFlow``` in ```MASConstants.h```.
- ```wasLoggedOff``` property in ```[MASUser currentUser]``` is deprecated.
- ```[[MASDevice currentDevice] resetLocallyWithCompletion:]``` will be deprecated.  Use ```[[MASDevice currentDevice] resetLocally]``` instead.
- ```MASSessionSharingDelegate``` protocol is renamed as ```MASProximityLoginDelegate```.
- All class methods, properties, and notofications containing **sessionSharing** are renamed to **proximityLogin**.



# Version 1.1.00

### Bug fixes

- .

### New features

- .

### Deprecated methods

- .


 [mag]: https://docops.ca.com/mag
 [mas.ca.com]: http://mas.ca.com/
 [docs]: http://mas.ca.com/docs/
 [blog]: http://mas.ca.com/blog/

 [releases]: ../../releases
 [contributing]: /CONTRIBUTING.md
 [license-link]: /LICENSE

