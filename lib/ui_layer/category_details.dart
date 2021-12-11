import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/MainWidgets/Animators/list_animator.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_bottom_sheet.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_btn.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/custom_text_field.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/done_view.dart';
import 'package:tmarjy_m3ak/constants.dart';

class GeneralCare extends StatefulWidget {
  final String name, type;

  const GeneralCare({Key key, this.name, this.type}) : super(key: key);

  @override
  _GeneralCareState createState() => _GeneralCareState();
}

class _GeneralCareState extends State<GeneralCare> {
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
          title: Text("${widget.name}"),
        ),
        body: ListAnimator(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "نوع الخدمة",
                style: TextStyle(color: kPrimary, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {
                CustomBottomSheet().show(
                    context: context,
                    child: ListView.builder(
                        itemCount: serviceType.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                service = serviceType[index];
                              });
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                children: [
                                  Text(
                                    "${serviceType[index]}",
                                    style: TextStyle(color: kPrimary, fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Divider()
                                ],
                              ),
                            ),
                          );
                        }));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 17,
                  decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${service ?? "اختر الخدمة"}",
                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: kPrimary,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "نوع التعاقد",
                style: TextStyle(color: kPrimary, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            InkWell(
              onTap: () {
                CustomBottomSheet().show(
                    context: context,
                    child: ListView.builder(
                        itemCount: contractType.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                contract = contractType[index];
                              });

                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Column(
                                children: [
                                  Text(
                                    "${contractType[index]}",
                                    style: TextStyle(color: kPrimary, fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  Divider()
                                ],
                              ),
                            ),
                          );
                        }));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 17,
                  decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${contract ?? "نوع التعاقد"}",
                          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: kPrimary,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ملحوظة عن الخدمة (اختياري)",
                style: TextStyle(color: kPrimary, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            CustomTextField(
              hint: "ملاحظات",
              lines: 5,
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
