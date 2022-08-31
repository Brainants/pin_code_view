part of pin_code_view;

class CodeView extends StatefulWidget {
  CodeView({
    this.code,
    this.length = 6,
    this.codeTextStyle,
    this.obscurePin = true,
  });
  final String? code;
  final int length;
  final bool obscurePin;
  final TextStyle? codeTextStyle;

  CodeViewState createState() => CodeViewState();
}

class CodeViewState extends State<CodeView> {
  String getCodeAt(index) {
    if (widget.code == null || widget.code!.length < index)
      return "  ";
    else if (widget.obscurePin) {
      return "*";
    } else {
      return widget.code!.substring(index - 1, index);
    }
  }

  _getCodeViews() {
    List<Widget> widgets = [];
    for (var i = 0; i < widget.length; i++) {
      widgets.add(
        Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.black12,
            border: Border(bottom: BorderSide(color: Colors.white)),
          ),
          padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          child: Text(
            getCodeAt(i + 1),
            textAlign: TextAlign.center,
            style: widget.codeTextStyle,
          ),
        ),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _getCodeViews(),
    );
  }
}
