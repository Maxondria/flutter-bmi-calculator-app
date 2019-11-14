import 'package:bmi_calculator/screens/results_screen.dart';
import 'package:bmi_calculator/shared/constants.dart';
import 'package:bmi_calculator/shared/widgets/bottom_button.dart';
import 'package:bmi_calculator/shared/widgets/icon_content.dart';
import 'package:bmi_calculator/shared/widgets/reusable_card.dart';
import 'package:bmi_calculator/shared/widgets/round_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender activeGender;
  int height = 180;
  int weight = 40;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeGender != Gender.MALE
                        ? kINACTIVE_CARD_COLOR
                        : kACTIVE_CARD_COLOR,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                    onTap: () => setState(() {
                      activeGender = Gender.MALE;
                    }),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeGender != Gender.FEMALE
                        ? kINACTIVE_CARD_COLOR
                        : kACTIVE_CARD_COLOR,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                    onTap: () => setState(() {
                      activeGender = Gender.FEMALE;
                    }),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kACTIVE_CARD_COLOR,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLABEL_TEXTSTYLE,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNUMBER_TEXTSTYLE,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'cm',
                        style: kLABEL_TEXTSTYLE,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120,
                    max: 320,
                    onChanged: (double newValue) => setState(() {
                      height = newValue.round();
                    }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: kACTIVE_CARD_COLOR,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLABEL_TEXTSTYLE,
                        ),
                        Text(
                          weight.toString(),
                          style: kNUMBER_TEXTSTYLE,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () => setState(() {
                                if (weight > 0) {
                                  weight--;
                                }
                              }),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () => setState(() {
                                weight++;
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kACTIVE_CARD_COLOR,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLABEL_TEXTSTYLE,
                        ),
                        Text(
                          age.toString(),
                          style: kNUMBER_TEXTSTYLE,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () => setState(() {
                                if (age > 0) {
                                  age--;
                                }
                              }),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () => setState(() {
                                age++;
                              }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
              text: 'CALCULATE',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsScreen(),
                  ),
                );
              })
        ],
      ),
    );
  }
}
