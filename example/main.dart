import 'package:flutter/material.dart';
import 'package:pin_code_view/pin_code_view.dart';

class PinCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PinCode(
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
      ),
    );
  }
}
