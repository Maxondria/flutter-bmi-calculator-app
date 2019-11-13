import 'package:bmi_calculator/widgets/input_page_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: InputPage(),
      ),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          elevation: 20.0,
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
