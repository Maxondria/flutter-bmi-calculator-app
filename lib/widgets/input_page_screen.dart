import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double BOTTOM_CONTAINER_HEIGHT = 80.0;
const Color BOTTOM_CONTAINER_COLOR = Color(0xFFEB1555);
const Color ACTIVE_CARD_COLOR = Color(0xFF1D1E33);
const Color INACTIVE_CARD_COLOR = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color _colorMaleCard = INACTIVE_CARD_COLOR;
  Color _colorFemaleCard = INACTIVE_CARD_COLOR;

  void updateActiveColor(String gender) {
    if (gender == 'male') {
      if (_colorMaleCard == INACTIVE_CARD_COLOR) {
        _colorMaleCard = ACTIVE_CARD_COLOR;
        _colorFemaleCard = INACTIVE_CARD_COLOR;
      } else {
        _colorMaleCard = INACTIVE_CARD_COLOR;
      }
    } else {
      if (_colorFemaleCard == INACTIVE_CARD_COLOR) {
        _colorFemaleCard = ACTIVE_CARD_COLOR;
        _colorMaleCard = INACTIVE_CARD_COLOR;
      } else {
        _colorFemaleCard = INACTIVE_CARD_COLOR;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateActiveColor('male');
                      });
                    },
                    child: ReusableCard(
                      color: _colorMaleCard,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateActiveColor('female');
                      });
                    },
                    child: ReusableCard(
                      color: _colorFemaleCard,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      ),
                    ),
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
