import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmiResult;

  String bmiCalculation() {
    _bmiResult = weight / pow(height / 100, 2);
    return _bmiResult.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmiResult >= 25) {
      return 'Overweight';
    } else if (_bmiResult >= 18.0) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiInterpretation() {
    if (_bmiResult >= 25) {
      return 'You have to be on diet and loss some weight';
    } else if (_bmiResult >= 18.0) {
      return 'You are in normal state so keep on that balance';
    } else {
      return 'You have to eat food so you could get some weight';
    }
  }
}
