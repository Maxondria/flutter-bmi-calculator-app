import 'package:bmi_calculator/shared/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const BottomButton({Key key, @required this.text, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kBOTTOM_CONTAINER_COLOR,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBOTTOM_CONTAINER_HEIGHT,
        child: Center(
          child: Text(
            text,
            style: kLARGE_BUTTON_TEXTSTYLE,
          ),
        ),
        padding: const EdgeInsets.only(
          bottom: 20.0,
        ),
      ),
      onTap: onTap,
    );
  }
}
