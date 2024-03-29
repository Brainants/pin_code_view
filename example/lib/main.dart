import 'package:flutter/material.dart';
import 'package:pin_code_view/pin_code_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pin Code Screen Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PinCode(
        title: "Enter PIN Code",
        subtitle: "Please enter the code you received on your Phone",
        onChange: (String code) {
          print(code);
        },
        obscurePin: true,
      ),
    );
  }
}
