import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableCard.dart';
import 'constant.dart';

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;
  int height = 180;
  int weight = 50;
  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;
  //
  // void updateColor(GenderType genderParameter) {
  //   genderParameter == GenderType.male
  //       ? maleCardColor = activeCardColor
  //       : femaleCardColor = activeCardColor;
  //   genderParameter == GenderType.male
  //       ? femaleCardColor = inActiveCardColor
  //       : maleCardColor = inActiveCardColor;
  //
  //   // if (genderParameter == GenderType.male) {
  //   //   if (maleCardColor == inActiveCardColor) {
  //   //     maleCardColor = activeCardColor;
  //   //     femaleCardColor = inActiveCardColor;
  //   //   } else {
  //   //     maleCardColor = inActiveCardColor;
  //   //   }
  //   // } else if (genderParameter == GenderType.female) {
  //   //   if (femaleCardColor == inActiveCardColor) {
  //   //     femaleCardColor = activeCardColor;
  //   //     maleCardColor = inActiveCardColor;
  //   //   } else {
  //   //     femaleCardColor = inActiveCardColor;
  //   //   }
  //   // }
  // }\
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                      },
                      color: selectedGender == GenderType.male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContent(
                        genderText: 'MALE',
                        genderIcon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                    color: selectedGender == GenderType.female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: IconContent(
                      genderText: 'FEMALE',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(), style: kNumberTextStyle),
                              Text(
                                'cm',
                                style: kLabelTextStyle,
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderThemeData(
                                activeTrackColor: Color(0xFFC9C4C4),
                                disabledInactiveTrackColor: Color(0xFF615B5B),
                                thumbColor: Color(0xFFAD1964),
                                overlayColor: Color(0x29AD1964),
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 16),
                                overlayShape:
                                    RoundSliderOverlayShape(overlayRadius: 40)),
                            child: Slider(
                              value: height.toDouble(),
                              max: 230,
                              min: 90,
                              //activeColor: Color(0xFFAD1964),
                              // inactiveColor: Color(0xFF615B5B),
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: ReusableCard(color: kActiveCardColor))
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(child: Text("Calculator")),
            )
          ],
        ));
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPress});
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      child: Icon(icon),
      elevation: 6.0,
      fillColor: Color(0XFF4c4f5e),
      shape: CircleBorder(),
    );
  }
}
