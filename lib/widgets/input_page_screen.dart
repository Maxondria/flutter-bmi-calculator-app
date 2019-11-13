import 'package:bmi_calculator/shared/constants.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
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
                    activeColor: kBOTTOM_CONTAINER_COLOR,
                    inactiveColor: kSLIDER_INACTIVE_COLOR,
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
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kACTIVE_CARD_COLOR,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBOTTOM_CONTAINER_COLOR,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBOTTOM_CONTAINER_HEIGHT,
          )
        ],
      ),
    );
  }
}
