import 'package:flutter/material.dart';
import 'input_Page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xff0b0b15),
          scaffoldBackgroundColor: Color(0xff0b0b15)),
      home: InputPage(),
    );
  }
}
