import 'package:bmi_calculator_flutter/components/ReusableCard.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../constant.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiCalNumber,
      @required this.bmiResult,
      @required this.bmiInterpretation,
      this.gender,
      this.age});
  final String bmiCalNumber;
  final String bmiResult;
  final String bmiInterpretation;
  final String gender;
  final int age;

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You selected: ' + gender,
                        style: kSmallText,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Your age: ' + age.toString(),
                        style: kSmallText,
                      )
                    ],
                  ),
                  Text(bmiResult.toUpperCase(), style: kResultTextStyle),
                  Text(
                    bmiCalNumber,
                    style: kResultNumberStyle,
                  ),
                  Text(
                    bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: kResultMessageStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonText: 'Re-Calculate',
          )
        ],
      ),
    );
  }
}
