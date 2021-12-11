import 'package:flutter/material.dart';

import '../constants.dart';

class CustomOnBoarding extends StatelessWidget {
  final String path, lineOne;
  final String lineTwo;
  final String lineThree;
  final double height;
  final double width;

  const CustomOnBoarding(
      {Key key,
      this.path,
      this.lineOne,
      this.lineTwo,
      this.lineThree,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 85),
      child: Center(
        child: Container(
          width: width * 0.8,
          height: height * 0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: onboardingColor,
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Image(image: AssetImage(path)),
              SizedBox(
                height: height / 15,
              ),
              Text(
                lineOne,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tajawal'),
              ),
              Text(
                lineTwo,
                style: TextStyle(
                    fontSize: 16,
                    color: txtonboardingColor,
                    fontFamily: 'Tajawal'),
              ),
              Text(
                lineThree,
                style: TextStyle(
                    fontSize: 16,
                    color: txtonboardingColor,
                    fontFamily: 'Tajawal'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
