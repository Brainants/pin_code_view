## [0.3.0+1] - 2022 Aug 31
* BREAKING CHANGE
- Added null safety support
- Refactored code
- Added better textStyle support
- Removed onCodeFail, onCodeSuccess  and added onChanged function.
- Upgraded to android embedding v2

## [0.2.1] - 2019 Mar 11

* BREAKING CHANGE !!: (onCodeEntered) removed, replaced with onCodeFail/onCodeSuccess with correctPin, if you want the old behaviour just don't provide correctPin and onCodeFail will work the same as the old onCodeEntered
* new : onCodeSuccess is the callback if entered code matches (==) the correctPin
* new : onCodeFail is the callback if entered code doesnt matches (!=) the correctPin

## [0.1.1] - 2019 Feb 17

* Fix miss typo in version code ,, makes pub get to fail
* Changed UI for pin boxes
* added backgroundColor (if not provided plugin will use theme of context color)
* added error text and it's style as optional parameter

## [0.1.0] - 2018 Oct 31.

* Added obscurePin parameter to make code * instead of number.

## [0.0.3] - 2018 Oct 3.

* Removed send again button, and added some more customization features.

## [0.0.2] - 2018 Oct 3.

* Minor bug fixes

## [0.0.1] - 2018 Oct 3.

* Added very first logics to the code.
