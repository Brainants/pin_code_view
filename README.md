# pin_code_view

A beautiful looking pin_code_view for flutter apps, customizable and fluid.
Pull requests are always welcomed.

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
  pin_code_view: 0.0.1
```

## Usage

```dart
import 'package:pin_code_view/pin_code_view.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return PinCode(
      title: "Verification code",
      subTitle: "A code has been sent to your phone number.", 
      codeLength: 6,
      onCodeEntered:(code){
        //this function is invoked once the code is completely entered
      },
      sendAgain:(){
        //this function is invoked if the user presses send again button
      }
    );
  }
}
```
