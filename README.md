# pin_code_view

A beautiful looking pin_code_view for flutter apps, customizable and fluid.
Pull requests are always welcomed.

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
  pin_code_view: 0.0.3
```

## Usage

```dart
import 'package:pin_code_view/pin_code_view.dart';

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return PinCode(
      title: Text(
        "Lock Screen",
        style: TextStyle(
            color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
      subTitle: Text(
        "Hello Boys",
        style: TextStyle(color: Colors.white),
      ),
      codeLength: 6,
      onCodeEntered: (code) {
        //callback after full code has been entered
        print(code);
      },
    );
  }
}
```
