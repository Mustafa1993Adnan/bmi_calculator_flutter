import 'package:bmi_calculator_flutter/components/ReusableCard.dart';
import 'package:bmi_calculator_flutter/screens/input_Page.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../constant.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.maxFinite,
              child: Text(
                'Your Result',
                style: kResultTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('hkjdhaks', style: kResultTextStyle),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '26.1',
                    style: kResultNumberStyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You should lose weightYou should lose weightYou should lose weightYou should lose weightYou should lose weight',
                    textAlign: TextAlign.center,
                    style: kResultMessageStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
            buttonText: 'Re-Calculate',
          )
        ],
      ),
    );
  }
}
