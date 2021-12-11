import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/MainWidgets/Animators/list_animator.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/app_logo.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_btn.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_text_field.dart';
import 'package:tmarjy_m3ak/constants.dart';
import 'package:tmarjy_m3ak/ui_layer/auth/privider_services.dart';

import '../../constants.dart';
import 'login_page.dart';

class ProviderSignUp extends StatefulWidget {
  const ProviderSignUp({Key key}) : super(key: key);

  @override
  _ProviderSignUpState createState() => _ProviderSignUpState();
}

class _ProviderSignUpState extends State<ProviderSignUp> {
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
                "انشاء حساب",
                style: TextStyle(color: kPrimary, fontSize: 24),
              ),
            ),
            CustomTextField(
              hint: "الاسم بالكامل",
              icon: Icons.person,
            ),
            CustomTextField(
              hint: "البريد الالكتروني",
              icon: Icons.mail,
            ),
            CustomTextField(
              hint: "رقم الهاتف",
              icon: Icons.call,
            ),
            CustomTextField(
              hint: "العنوان",
              icon: Icons.location_pin,
            ),
            // CustomTextField(
            //   hint: "شعار الموسسة",
            //   icon: Icons.image,
            //   onTap:()=> getImage(),
            // ),
            CustomTextField(
              hint: "كلمة المرور",
              icon: Icons.lock,
            ),
            CustomTextField(
              hint: "تأكيد كلمة المرور",
              icon: Icons.lock,
            ),
            CustomBtn(
              text: "متابعة",
              color: kSecondary,
              txtColor: kPrimary,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProviderServices()));
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
                child: Center(
                  child: Text(
                    "لديك حساب ب الفعل ؟ تسجيل الدخول",
                    style: TextStyle(fontSize: 16 , color: kSecondary),
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
