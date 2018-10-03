import 'package:flutter/material.dart';

class CodeView extends StatefulWidget {
  CodeView({this.code, this.length});

  final String code;
  final int length;

  final TextStyle style = TextStyle(
      color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold);

  CodeViewState createState() => CodeViewState();
}

class CodeViewState extends State<CodeView> {
  String getCodeAt(index) {
    if (widget.code == null || widget.code.length < index)
      return "";
    else {
      return widget.code.substring(index - 1, index);
    }
  }

  _getCodeViews() {
    return List.generate(widget.length, (index) {
      return Expanded(
        child: Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          child: Text(
            getCodeAt(index + 1),
            textAlign: TextAlign.center,
            style: widget.style,
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: _getCodeViews(),
    );
  }
}
