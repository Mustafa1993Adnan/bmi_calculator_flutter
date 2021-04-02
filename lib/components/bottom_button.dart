import 'package:flutter/material.dart';
import '../constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonText});
  final Function onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          color: kBottomContainerColor,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: kBottomContainerHeight,
          padding: EdgeInsets.only(bottom: 22),
          child: Center(
            child: Text(
              buttonText,
              style: kLargeButtonStyle,
            ),
          )),
    );
  }
}
