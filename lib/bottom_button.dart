
import 'package:flutter/material.dart';
import './constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.bodyTitle, this.onTap});
  final String bodyTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          bodyTitle,
          style: bottomContainerStyle,
        )),
        height: bottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20),
        color: Colors.pink[600],
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
      ),
    );
  }
}