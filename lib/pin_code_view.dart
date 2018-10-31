import 'package:flutter/material.dart';
import './custom_keyboard.dart';
import './code_view.dart';

class PinCode extends StatefulWidget {
  final Text title, subTitle;
  final Function onCodeEntered;
  final int codeLength;
  final TextStyle keyTextStyle, codeTextStyle;
  final bool obscurePin;

  PinCode({
    this.title,
    this.subTitle,
    this.codeLength = 6,
    this.obscurePin = false,
    this.onCodeEntered,
    this.keyTextStyle = const TextStyle(color: Colors.white, fontSize: 25.0),
    this.codeTextStyle = const TextStyle(
        color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
  });

  PinCodeState createState() => PinCodeState();
}

class PinCodeState extends State<PinCode> {
  String smsCode = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Expanded(child: Container()),
                Container(
                    padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                    child: widget.title),
                widget.subTitle,
                Expanded(child: Container()),
                CodeView(
                  codeTextStyle: widget.codeTextStyle,
                  code: smsCode,
                  obscurePin: widget.obscurePin,
                  length: widget.codeLength,
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
        CustomKeyboard(
          textStyle: widget.keyTextStyle,
          onPressedKey: (key) {
            if (smsCode.length < widget.codeLength) {
              setState(() {
                smsCode = smsCode + key;
              });
            }
            if (smsCode.length == widget.codeLength) {
              widget.onCodeEntered(smsCode);
            }
          },
          onBackPressed: () {
            int codeLength = smsCode.length;
            if (codeLength > 0)
              setState(() {
                smsCode = smsCode.substring(0, codeLength - 1);
              });
          },
        ),
      ]),
    );
  }
}
