import 'package:bmi_calculator/screens/input_page_screen.dart';
import 'package:bmi_calculator/shared/constants.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: InputPage(),
      ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbColor: kBOTTOM_CONTAINER_COLOR,
          overlayColor: kSLIDER_THUMBOVERLAY_COLOR,
          activeTrackColor: Colors.white,
          inactiveTrackColor: kSLIDER_INACTIVE_COLOR,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
        ),
        appBarTheme: AppBarTheme.of(context).copyWith(
          elevation: 20.0,
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
    );
  }
}
