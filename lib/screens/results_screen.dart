import 'package:bmi_calculator/shared/constants.dart';
import 'package:bmi_calculator/shared/widgets/bottom_button.dart';
import 'package:bmi_calculator/shared/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
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
                      'NORMAL',
                      style: kRESULT_TEXTSTYLE,
                    ),
                    Text(
                      '18.5',
                      style: kBMI_TEXTSTYLE,
                    ),
                    Text(
                      'Your BMI result is quite low, you should eat me',
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
