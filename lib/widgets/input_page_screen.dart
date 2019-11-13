import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double BOTTOM_CONTAINER_HEIGHT = 80.0;
const Color BOTTOM_CONTAINER_COLOR = Color(0xFFEB1555);
const Color ACTIVE_CARD_COLOR = Color(0xFF1D1E33);
const Color INACTIVE_CARD_COLOR = Color(0xFF111328);

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender activeGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeGender != Gender.MALE
                        ? INACTIVE_CARD_COLOR
                        : ACTIVE_CARD_COLOR,
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
                        ? INACTIVE_CARD_COLOR
                        : ACTIVE_CARD_COLOR,
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
              color: ACTIVE_CARD_COLOR,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: ACTIVE_CARD_COLOR,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: ACTIVE_CARD_COLOR,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: BOTTOM_CONTAINER_COLOR,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: BOTTOM_CONTAINER_HEIGHT,
          )
        ],
      ),
    );
  }
}
