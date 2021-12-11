import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/ui_layer/auth/onboarding-1.dart';

import 'constants.dart';

void main() {
  runApp(TmarjyMa3k());
}

class TmarjyMa3k extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Tajawal",
          primaryColor: kPrimary,
          appBarTheme: AppBarTheme(elevation: 0, centerTitle: true, iconTheme: (IconThemeData(color: kSecondary)))),
      home: IntroScreens(),
    );
  }
}
