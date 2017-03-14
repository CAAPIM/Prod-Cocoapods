# Version 1.3.01

### Bug fixes
- Fixed a bug where [MASUser currentUser].isAuthenticated property is returning wrong value when MASIdentityManagement is included in the project.
- Removed NSAssertion to validate parameters and replaced with proper NSError return. [US240398]


# Version 1.2.03

- Release tag to align with MASFoundation framework.
- ***No fixes for this framework***

# Version 1.2.01

### Bug fixes
- The filter (filterExpressions string) was constructed with incorrect syntax (missing property name for filter in URL query string).  [MCT-482]
- Version number and version string returned incorrect values. [MCT-437]
- Updated group names when a group does not have an owner(docker). [DE231998]
- Added nullability annotations to certain interfaces. [US240398]
- Improved error handling in the case of missing parameters. [US240398]


### New features

None.

### Deprecated methods

None.



 [mag]: https://docops.ca.com/mag
 [mas.ca.com]: http://mas.ca.com/
 [docs]: http://mas.ca.com/docs/
 [blog]: http://mas.ca.com/blog/

 [releases]: ../../releases
 [contributing]: /CONTRIBUTING.md
 [license-link]: /LICENSE

