import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/MainWidgets/Animators/list_animator.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/app_logo.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_btn.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_text_field.dart';
import 'package:tmarjy_m3ak/constants.dart';
import 'package:tmarjy_m3ak/ui_layer/main_page/main_page.dart';

import '../../constants.dart';
import 'account_type.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kPrimary,
        body: ListAnimator(
          children: [
            AppLogo(),
            Center(
              child: Text(
                "تسجيل الدخول",
                style: TextStyle(color: kPrimary, fontSize: 24),
              ),
            ),
            CustomTextField(
              hint: "رقم الهاتف",
              icon: Icons.call,
            ),
            CustomTextField(
              hint: "كلمة المرور",
              icon: Icons.lock,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                "نسيت كلمة المرور ؟ ",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 16, color: kSecondary, fontWeight: FontWeight.bold),
              ),
            ),
            CustomBtn(
              text: "دخول",
              color: kSecondary,
              txtColor: kPrimary,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountType()));
                },
                child: Center(
                  child: Text(
                    "ليس لديك حساب ؟ .. انشاء حساب",
                    style: TextStyle(
                      fontSize: 16,
                      color: kSecondary,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
