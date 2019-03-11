## [0.2.1] - 11 Mar 19

* BREAKING CHANGE !!: (onEnteredPin) removed, replaced with onCodeFail/onCodeSuccess with correctPin, if you want the old behaviour just don't provide correctPin and onCodeFail will work the same as the old onEnteredPin
* new : onCodeSuccess is the callback if entered code matches (==) the correctPin
* new : onCodeFail is the callback if entered code doesn't matche (!=) the correctPin

## [0.1.0] - 2018 Oct 31.

* Added obscurePin parameter to make code * instead of number.

## [0.0.3] - 2018 Oct 3.

* Removed send again button, and added some more customization features.

## [0.0.2] - 2018 Oct 3.

* Minor bug fixes

## [0.0.1] - 2018 Oct 3.

* Added very first logics to the code.
