import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/MainWidgets/Animators/list_animator.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_btn.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_text_field.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/done_view.dart';
import 'package:tmarjy_m3ak/constants.dart';

import '../constants.dart';

class SendRoshitta extends StatefulWidget {
  final String name, type;

  const SendRoshitta({Key key, this.name, this.type}) : super(key: key);

  @override
  _SendRoshittaState createState() => _SendRoshittaState();
}

class _SendRoshittaState extends State<SendRoshitta> {
  String service, contract;
  List<String> serviceType = [
    "رعاية",
    "تمريض",
    "أخذ عينة",
    "عناية مسنين",
    "قياس ضغط",
    "قياس سكر",
  ];
  List<String> contractType = [
    "مرة واحدة",
    "بالشهر",
    "حسب الطلب",
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.name ?? "ارسال روشتة"),
        ),
        body: ListAnimator(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "صورة الروشتة",
                style: TextStyle(color: kPrimary, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: kPrimary,
                        size: 50,
                      ),
                      Text(
                        "الكاميرا",
                        style: TextStyle(color: kPrimary),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image,
                          color: kPrimary,
                          size: 50,
                        ),
                        Text(
                          "المعرض",
                          style: TextStyle(color: kPrimary),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "العنوان بالتفصيل",
                style: TextStyle(color: kPrimary, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CustomTextField(
              hint: "العنوان بالتفصيل",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "رقم تلفون اخر",
                style: TextStyle(color: kPrimary, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CustomTextField(
              hint: "رقم تلفون اخر",
            ),
            CustomBtn(
              text: "إرسال",
              color: kPrimary,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DoneView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
