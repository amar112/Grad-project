import 'package:flutter/material.dart';

import '../MainWidgets/Animators/list_animator.dart';
import '../MainWidgets/Basics/CustomNetworkImage.dart';
import '../MainWidgets/Basics/custom_btn.dart';
import '../constants.dart';

class PlaceDetails extends StatefulWidget {
  final String name, image;

  const PlaceDetails({Key key, this.name, this.image}) : super(key: key);

  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: CustomBtn(
          color: kPrimary,
          txtColor: kSecondary,
          text: "حجز",
          onTap: () {},
        ),
        appBar: AppBar(
          title: Text("${widget.name}"),
        ),
        body: ListAnimator(
          children: [
            Container(
              color: kPrimary,
              height: MediaQuery.of(context).size.height / 2.5,
              child: Stack(
                children: [
                  Stack(
                    children: [
                      CustomNetworkImage().containerNewWorkImage(
                          image: widget.image, width: double.infinity, height: MediaQuery.of(context).size.height / 2),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 2.5,
                        color: Colors.black.withOpacity(0.5),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3.8,
                        ),
                        Column(
                          children: [
                            Text(
                              "${widget.name}",
                              style: TextStyle(color: kSecondary, fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 60,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Icon(
                                      Icons.star,
                                      color: Colors.yellowAccent,
                                    );
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "التفاصيل : ",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(color: kPrimary, borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.call_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                      )),
                  SizedBox(width: 10),
                  Text(
                    "010039938744",
                    style: TextStyle(color: kPrimary, fontWeight: FontWeight.bold),
                  )


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(color: kPrimary, borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.location_pin,
                          color: Colors.white,
                          size: 25,
                        ),
                      )),
                  SizedBox(width: 10),
                  Text(
                    "المنصورة شارع بنك مصر عقار رقم 56 ",
                    style: TextStyle(color: kPrimary, fontWeight: FontWeight.bold),
                  )


                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}
