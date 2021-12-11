import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/MainWidgets/Animators/list_animator.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/app_logo.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_btn.dart';
import 'package:tmarjy_m3ak/ui_layer/auth/provider_signUp.dart';
import 'package:tmarjy_m3ak/ui_layer/auth/sign_up.dart';

import '../../constants.dart';

class AccountType extends StatefulWidget {
  const AccountType({Key key}) : super(key: key);

  @override
  _AccountTypeState createState() => _AccountTypeState();
}

class _AccountTypeState extends State<AccountType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: ListAnimator(
        children: [
          AppLogo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: CustomBtn(
              text: "مستخدم",
              color: kSecondary,
              txtColor: kPrimary,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            ),
          ),
          CustomBtn(
            text: "مقدم خدمة",
            color: kSecondary,
            txtColor: kPrimary,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProviderSignUp()));
            },
          ),
        ],
      ),
    );
  }
}
