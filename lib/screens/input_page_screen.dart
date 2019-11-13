import 'package:flutter/material.dart';

const BOTTOM_CONTAINER_HEIGHT = 80.0;
const BOTTOM_CONTAINER_COLOR = Color(0xFFEB1555);
const ACTIVE_CARD_COLOR = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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

class ReusableCard extends StatelessWidget {
  final Color color;

  const ReusableCard({Key key, @required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
