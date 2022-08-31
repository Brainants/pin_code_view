part of pin_code_view;

class CustomKeyboard extends StatelessWidget {
  final Function onBackPressed, onPressedKey;
  final TextStyle textStyle;
  final KeyboardType keyboardType;

  CustomKeyboard({
    required this.onBackPressed,
    required this.onPressedKey,
    required this.textStyle,
    required this.keyboardType,
  });

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
              MaterialButton(
                onPressed: () => onPressedKey("1"),
                shape: CircleBorder(side: BorderSide(width: double.infinity)),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: List.unmodifiable(() sync* {
                    // NOTE: As long as there is no spread-operator in stable channel, this is the workaround...
                    yield Text(
                      "1",
                      style: textStyle,
                    );
                    if (keyboardType == KeyboardType.alphaNumeric) {
                      yield SizedBox(height: textStyle.fontSize! * 0.5);
                      yield Text(
                        '',
                        style: TextStyle(
                          color: textStyle.color,
                          fontSize: textStyle.fontSize! * 0.5,
                        ),
                      );
                    }
                  }()),
                ),
              ),
              MaterialButton(
                onPressed: () => onPressedKey("2"),
                shape: CircleBorder(side: BorderSide(width: double.infinity)),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: List.unmodifiable(() sync* {
                    // NOTE: As long as there is no spread-operator in stable channel, this is the workaround...
                    yield Text(
                      "2",
                      style: textStyle,
                    );
                    if (keyboardType == KeyboardType.alphaNumeric) {
                      yield SizedBox(height: textStyle.fontSize! * 0.5);
                      yield Text(
                        'A B C',
                        style: TextStyle(
                          color: textStyle.color,
                          fontSize: textStyle.fontSize! * 0.5,
                        ),
                      );
                    }
                  }()),
                ),
              ),
              MaterialButton(
                onPressed: () => onPressedKey("3"),
                shape: CircleBorder(side: BorderSide(width: double.infinity)),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: List.unmodifiable(() sync* {
                    // NOTE: As long as there is no spread-operator in stable channel, this is the workaround...
                    yield Text(
                      "3",
                      style: textStyle,
                    );
                    if (keyboardType == KeyboardType.alphaNumeric) {
                      yield SizedBox(height: textStyle.fontSize! * 0.5);
                      yield Text(
                        'D E F',
                        style: TextStyle(
                          color: textStyle.color,
                          fontSize: textStyle.fontSize! * 0.5,
                        ),
                      );
                    }
                  }()),
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
              MaterialButton(
                onPressed: () => onPressedKey("4"),
                shape: CircleBorder(side: BorderSide(width: double.infinity)),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: List.unmodifiable(() sync* {
                    // NOTE: As long as there is no spread-operator in stable channel, this is the workaround...
                    yield Text(
                      "4",
                      style: textStyle,
                    );
                    if (keyboardType == KeyboardType.alphaNumeric) {
                      yield SizedBox(height: textStyle.fontSize! * 0.5);
                      yield Text(
                        'G H I',
                        style: TextStyle(
                          color: textStyle.color,
                          fontSize: textStyle.fontSize! * 0.5,
                        ),
                      );
                    }
                  }()),
                ),
              ),
              MaterialButton(
                onPressed: () => onPressedKey("5"),
                shape: CircleBorder(side: BorderSide(width: double.infinity)),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: List.unmodifiable(() sync* {
                    // NOTE: As long as there is no spread-operator in stable channel, this is the workaround...
                    yield Text(
                      "5",
                      style: textStyle,
                    );
                    if (keyboardType == KeyboardType.alphaNumeric) {
                      yield SizedBox(height: textStyle.fontSize! * 0.5);
                      yield Text(
                        'J K L',
                        style: TextStyle(
                          color: textStyle.color,
                          fontSize: textStyle.fontSize! * 0.5,
                        ),
                      );
                    }
                  }()),
                ),
              ),
              MaterialButton(
                onPressed: () => onPressedKey("6"),
                shape: CircleBorder(side: BorderSide(width: double.infinity)),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: List.unmodifiable(() sync* {
                    // NOTE: As long as there is no spread-operator in stable channel, this is the workaround...
                    yield Text(
                      "6",
                      style: textStyle,
                    );
                    if (keyboardType == KeyboardType.alphaNumeric) {
                      yield SizedBox(height: textStyle.fontSize! * 0.5);
                      yield Text(
                        'M N O',
                        style: TextStyle(
                          color: textStyle.color,
                          fontSize: textStyle.fontSize! * 0.5,
                        ),
                      );
                    }
                  }()),
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
              MaterialButton(
                onPressed: () => onPressedKey("7"),
                shape: CircleBorder(side: BorderSide(width: double.infinity)),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: List.unmodifiable(() sync* {
                    // NOTE: As long as there is no spread-operator in stable channel, this is the workaround...
                    yield Text(
                      "7",
                      style: textStyle,
                    );
                    if (keyboardType == KeyboardType.alphaNumeric) {
                      yield SizedBox(height: textStyle.fontSize! * 0.5);
                      yield Text(
                        'P Q R S',
                        style: TextStyle(
                          color: textStyle.color,
                          fontSize: textStyle.fontSize! * 0.5,
                        ),
                      );
                    }
                  }()),
                ),
              ),
              MaterialButton(
                onPressed: () => onPressedKey("8"),
                shape: CircleBorder(side: BorderSide(width: double.infinity)),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: List.unmodifiable(() sync* {
                    // NOTE: As long as there is no spread-operator in stable channel, this is the workaround...
                    yield Text(
                      "8",
                      style: textStyle,
                    );
                    if (keyboardType == KeyboardType.alphaNumeric) {
                      yield SizedBox(height: textStyle.fontSize! * 0.5);
                      yield Text(
                        'T U V',
                        style: TextStyle(
                          color: textStyle.color,
                          fontSize: textStyle.fontSize! * 0.5,
                        ),
                      );
                    }
                  }()),
                ),
              ),
              MaterialButton(
                onPressed: () => onPressedKey("9"),
                shape: CircleBorder(side: BorderSide(width: double.infinity)),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: List.unmodifiable(() sync* {
                    // NOTE: As long as there is no spread-operator in stable channel, this is the workaround...
                    yield Text(
                      "9",
                      style: textStyle,
                    );
                    if (keyboardType == KeyboardType.alphaNumeric) {
                      yield SizedBox(height: textStyle.fontSize! * 0.5);
                      yield Text(
                        'W Y X Z',
                        style: TextStyle(
                          color: textStyle.color,
                          fontSize: textStyle.fontSize! * 0.5,
                        ),
                      );
                    }
                  }()),
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
              Expanded(
                  child: Container()), // Empty Container, to fill the space
              Expanded(
                child: MaterialButton(
                  onPressed: () => onPressedKey("0"),
                  shape: CircleBorder(side: BorderSide(width: double.infinity)),
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "0",
                    style: textStyle,
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () => onBackPressed(),
                  shape: CircleBorder(side: BorderSide(width: double.infinity)),
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.backspace,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
