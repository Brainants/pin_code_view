library pin_code_view;

import 'package:flutter/material.dart';

part 'custom_keyboard.dart';
part 'code_view.dart';

enum KeyboardType {
  numeric,
  alphaNumeric,
}

class PinCode extends StatefulWidget {
  final String title;
  final String? subtitle, error;
  final Function(String) onChange;
  final int codeLength;
  final TextStyle? titleTextStyle,
      subtitleTextStyle,
      keyTextStyle,
      codeTextStyle,
      errorTextStyle;
  final bool obscurePin;
  final Color? backgroundColor;
  final KeyboardType keyboardType;

  PinCode({
    /// Title of the pin code screen
    required this.title,

    /// Subtitle of the pin code screen
    this.subtitle,

    /// Callback function that is trigged on every key store.
    required this.onChange,

    /// Background color
    this.backgroundColor,

    /// Error message to be displayed on the sceen
    this.error,

    /// Length of the code, default is 6
    this.codeLength = 6,

    /// Weather to show the pin or hide it with *
    this.obscurePin = false,

    /// Text style for the title
    this.titleTextStyle,

    /// Text style for the subtitle
    this.subtitleTextStyle,

    /// Text style for the error
    this.errorTextStyle,

    /// Text style for the key
    this.keyTextStyle,

    /// Text style for the code
    this.codeTextStyle,

    /// Type of the keyboard
    this.keyboardType = KeyboardType.alphaNumeric,
  });

  PinCodeState createState() => PinCodeState();
}

class PinCodeState extends State<PinCode> {
  String smsCode = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.backgroundColor ?? Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Expanded(child: Container()),
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ).merge(widget.titleTextStyle),
                    ),
                  ),
                  if (widget.subtitle != null)
                    Text(
                      widget.subtitle!,
                      style: TextStyle(
                        color: Colors.white,
                      ).merge(widget.subtitleTextStyle),
                    ),
                  Expanded(child: Container()),
                  CodeView(
                    codeTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ).merge(widget.codeTextStyle),
                    code: smsCode,
                    obscurePin: widget.obscurePin,
                    length: widget.codeLength,
                  ),
                  if (widget.error != null)
                    Text(
                      '${widget.error}',
                      style: TextStyle(
                        color: Colors.red,
                      ).merge(widget.errorTextStyle),
                      textAlign: TextAlign.center,
                    ),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),
          CustomKeyboard(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ).merge(widget.keyTextStyle),
            onPressedKey: (key) {
              if (smsCode.length < widget.codeLength) {
                setState(() {
                  smsCode = smsCode + key;
                });
              }
              if (smsCode.length == widget.codeLength) {
                widget.onChange(smsCode);
              }
            },
            onBackPressed: () {
              int codeLength = smsCode.length;
              if (codeLength > 0)
                setState(() {
                  smsCode = smsCode.substring(0, codeLength - 1);
                });
            },
            keyboardType: widget.keyboardType,
          ),
        ],
      ),
    );
  }
}
