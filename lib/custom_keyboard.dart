import 'package:flutter/material.dart';

class CustomKeyboard extends StatefulWidget {
  final Function onBackPressed, onKeyPressed;
  final TextStyle textStyle;
  CustomKeyboard({
    this.onBackPressed,
    this.onKeyPressed,
    this.textStyle = const TextStyle(color: Colors.white, fontSize: 25.0),
  });

  CustomKeyboardState createState() => CustomKeyboardState();
}

class CustomKeyboardState extends State<CustomKeyboard> {
  String code = "";

  onPressedKey(String number) {
    widget.onKeyPressed(number);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                onPressed: () => onPressedKey("1"),
                icon: Text(
                  "1",
                  style: widget.textStyle,
                ),
              ),
              IconButton(
                onPressed: () => onPressedKey("2"),
                icon: Text(
                  "2",
                  style: widget.textStyle,
                ),
              ),
              IconButton(
                onPressed: () => onPressedKey("3"),
                icon: Text(
                  "3",
                  style: widget.textStyle,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                onPressed: () => onPressedKey("4"),
                icon: Text(
                  "4",
                  style: widget.textStyle,
                ),
              ),
              IconButton(
                onPressed: () => onPressedKey("5"),
                icon: Text(
                  "5",
                  style: widget.textStyle,
                ),
              ),
              IconButton(
                onPressed: () => onPressedKey("6"),
                icon: Text(
                  "6",
                  style: widget.textStyle,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                onPressed: () => onPressedKey("7"),
                icon: Text(
                  "7",
                  style: widget.textStyle,
                ),
              ),
              IconButton(
                onPressed: () => onPressedKey("8"),
                icon: Text(
                  "8",
                  style: widget.textStyle,
                ),
              ),
              IconButton(
                onPressed: () => onPressedKey("9"),
                icon: Text(
                  "9",
                  style: widget.textStyle,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Text(
                  "",
                  style: widget.textStyle,
                ),
              ),
              IconButton(
                onPressed: () => onPressedKey("0"),
                icon: Text(
                  "0",
                  style: widget.textStyle,
                ),
              ),
              IconButton(
                onPressed: () => widget.onBackPressed(),
                icon: Icon(
                  Icons.backspace,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
