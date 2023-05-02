import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import './constants.dart';
import './bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi, required this.bmiFeedback, required this.bmiResult});
  final String bmi;
  final String bmiResult;
  final String bmiFeedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              'YOUR RESULT',
              style: resultTitle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      bmiResult,
                      style: bmiText,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmi,
                      style: bmiNumber,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiFeedback,
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              bodyTitle: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
