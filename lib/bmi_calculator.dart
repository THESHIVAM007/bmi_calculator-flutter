import 'dart:math';

class BmiCalculator {
  BmiCalculator({this.height, this.weight});
  final int? height;
  final int? weight;
  late double _bmi;
  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getFeed() {
    if (_bmi > 25) {
      return 'You Should Exercise More';
    } else if (_bmi >= 18.5) {
      return 'Good Job';
    } else {
      return 'You Should Eat More';
    }
  }
}
