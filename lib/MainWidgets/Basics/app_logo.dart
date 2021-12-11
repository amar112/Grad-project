import 'package:flutter/material.dart';

import '../../constants.dart';

class AppLogo extends StatelessWidget {
  final double hight, width;

  final BoxFit fit;

  const AppLogo({Key key, this.hight, this.width, this.fit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        child: Image.asset(
          "images/logo.png",
          color: kSecondary,
          fit: fit ?? BoxFit.fitWidth,
        ),
        width: width ?? MediaQuery.of(context).size.width / 3,
        height: hight ?? MediaQuery.of(context).size.height / 4,
      ),
    );
  }
}
