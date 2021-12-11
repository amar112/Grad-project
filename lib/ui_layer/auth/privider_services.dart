import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/MainWidgets/Animators/list_animator.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_btn.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_text_field.dart';
import 'package:tmarjy_m3ak/constants.dart';
import 'package:tmarjy_m3ak/ui_layer/main_page/main_page.dart';

import '../../constants.dart';

class ProviderServices extends StatefulWidget {
  const ProviderServices({Key key}) : super(key: key);

  @override
  _ProviderServicesState createState() => _ProviderServicesState();
}

class _ProviderServicesState extends State<ProviderServices> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kPrimary,
        body: ListAnimator(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "اضافة الخدمات",
                style: TextStyle(color: kSecondary, fontSize: 24),
              ),
            ),
            CustomTextField(hint: "اسم الخدمة"),
            CustomTextField(hint: "مدة الخدمة"),
            CustomTextField(hint: "سعر الخدمة"),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.1,
                  child: CustomBtn(
                    text: "اضافة",
                    color: kSecondary,
                    txtColor: kPrimary,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.1,
                  child: CustomBtn(
                    text: "خدمة اخري",
                    color: kSecondary,
                    txtColor: kPrimary,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProviderServices()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
