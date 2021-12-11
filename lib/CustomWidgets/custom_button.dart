import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final double width, hight;

  const CustomButton(
      {Key key, @required this.text, this.bgColor, this.width, this.hight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width - 100,
      height: hight ?? 45,
      decoration: BoxDecoration(
          color: bgColor ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          '$text',
          style: TextStyle(
              color: bgColor == kSecondary ? Colors.black : Colors.white,
              fontSize: 16),
        ),
      ),
    );
  }
}
