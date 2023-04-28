import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.cate, required this.iconType});
  final String cate;
  final IconData iconType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconType, size: 80, color: Colors.white),
        SizedBox(
          height: 15,
        ),
        Text(
          cate,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
