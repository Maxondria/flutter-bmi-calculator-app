import 'package:bmi_calculator/shared/constants.dart';
import 'package:bmi_calculator/shared/widgets/bottom_button.dart';
import 'package:bmi_calculator/shared/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String bmiInterpretation;

  ResultsScreen(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Your Result',
                      style: kTITLE_TEXTSTYLE,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
                color: kACTIVE_CARD_COLOR,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: kRESULT_TEXTSTYLE,
                    ),
                    Text(
                      bmiResult,
                      style: kBMI_TEXTSTYLE,
                    ),
                    Text(
                      bmiInterpretation,
                      style: kBMI_BODY_TEXTSTYLE,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
                text: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(
                    context,
                  );
                })
          ],
        ),
      ),
    );
  }
}
