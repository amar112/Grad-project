import 'package:flutter/material.dart';

import 'app_logo.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
      ),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        )),
        width: MediaQuery.of(context).size.width / 3,
        height: MediaQuery.of(context).size.height / 7,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppLogo(
            width: MediaQuery.of(context).size.width / 4,
            hight: MediaQuery.of(context).size.height / 7,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
