library pin_code_view;

import 'package:flutter/material.dart';
import './custom_keyboard.dart';
import './code_view.dart';

class PinCode extends StatefulWidget {
  final String title, subTitle;
  final Function sendAgain, onCodeEntered;
  final int codeLength;

  PinCode({
    this.title,
    this.subTitle,
    this.codeLength = 6,
    this.onCodeEntered,
    this.sendAgain,
  });
  PinCodeState createState() => PinCodeState();
}

class PinCodeState extends State<PinCode> {
  String smsCode = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Colors.white,
              icon: Icon(Icons.arrow_back),
            ),
          ],
        ),
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
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                ),
                Text(
                  widget.subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Expanded(child: Container()),
                CodeView(
                  code: smsCode,
                ),
                Expanded(child: Container()),
                Text(
                  "Didn't Receive?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                FlatButton(
                  child: Text("Send Again"),
                  textColor: Theme.of(context).accentColor,
                  onPressed: widget.sendAgain,
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
        ),
        CustomKeyboard(
          onKeyPressed: (key) {
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
