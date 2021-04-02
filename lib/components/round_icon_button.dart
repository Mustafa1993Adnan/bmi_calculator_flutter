import 'package:flutter/material.dart';

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
