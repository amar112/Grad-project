import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/MainWidgets/Animators/list_animator.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/search_text_field.dart';
import 'package:tmarjy_m3ak/components/home_item_cat.dart';
import 'package:tmarjy_m3ak/components/home_item_place.dart';
import 'package:tmarjy_m3ak/constants.dart';

import '../../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kPrimary,
        body: ListAnimator(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "إكتشف",
                style: TextStyle(color: kSecondary, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: CustomSearchTextField(
                hint: "ابحث هنا",
                icon: Icons.search,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Container(
                height: MediaQuery.of(context).size.height / 7,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    HomeItemCategory(
                      image: "images/x-ray.png",
                      name: "مراكز\n\الاشعة",
                      type: "care",
                    ),
                    HomeItemCategory(
                      image: "images/analysis.png",
                      name: "معامل \n\التحاليل",
                    ),
                    HomeItemCategory(
                      image: "images/nurse.png",
                      name: "ممرضين",
                    ),
                    HomeItemCategory(
                      image: "images/pharmacy.png",
                      name: "صيدليات",
                    ),
                    HomeItemCategory(
                      image: "images/stethoscope (1).png",
                      name: "أطباء",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "الاكثر شهرة",
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              "عرض الكل",
                              style: TextStyle(color: Colors.green),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.green,
                              size: 15,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        HomeItemPlace(
                          image: "https://aldalildotcom.com/uploads/images_cache/big/directory_1553846925_1853.jpg",
                          name: "معمل المختبر",
                        ),
                        HomeItemPlace(
                          image:
                              "https://play-lh.googleusercontent.com/3Ayv-0-hV6MnV6EPq21gqo5ffL-2dplZUh7X797G1PLQcwnINF6vUQbWmxTKl-jMYFw",
                          name: "صيدليات مصر",
                        ),
                        HomeItemPlace(
                          image:
                              "https://1.bp.blogspot.com/-Okeogkb-7r4/X8JNerFT9mI/AAAAAAAAoe0/cUqlGYSrgDA1p0N0V9w-MyqYcsiWkuikQCLcBGAsYHQ/s580/%25D9%2588%25D8%25B8%25D8%25A7%25D8%25A6%25D9%2581-%25D8%25B5%25D9%258A%25D8%25AF%25D9%2584%25D9%258A%25D8%25A7%25D8%25AA-%25D8%25A7%25D9%2584%25D8%25B9%25D8%25B2%25D8%25A8%25D9%2589.jpg",
                          name: "العزبي",
                        ),
                        HomeItemPlace(
                          image: "https://cdn.altibbi.com/cdn/thumbs/male-new.png",
                          name: "د.جمال فهيم",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "العروض",
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text(
                              "عرض الكل",
                              style: TextStyle(color: Colors.green),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.green,
                              size: 15,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        HomeItemPlace(
                          image:
                              "https://1.bp.blogspot.com/-Okeogkb-7r4/X8JNerFT9mI/AAAAAAAAoe0/cUqlGYSrgDA1p0N0V9w-MyqYcsiWkuikQCLcBGAsYHQ/s580/%25D9%2588%25D8%25B8%25D8%25A7%25D8%25A6%25D9%2581-%25D8%25B5%25D9%258A%25D8%25AF%25D9%2584%25D9%258A%25D8%25A7%25D8%25AA-%25D8%25A7%25D9%2584%25D8%25B9%25D8%25B2%25D8%25A8%25D9%2589.jpg",
                          name: "العزبي",
                        ),
                        HomeItemPlace(
                          image: "https://cdn.altibbi.com/cdn/thumbs/male-new.png",
                          name: "د.جمال فهيم",
                        ),
                        HomeItemPlace(
                          image: "https://aldalildotcom.com/uploads/images_cache/big/directory_1553846925_1853.jpg",
                          name: "معمل المختبر",
                        ),
                        HomeItemPlace(
                          image:
                              "https://play-lh.googleusercontent.com/3Ayv-0-hV6MnV6EPq21gqo5ffL-2dplZUh7X797G1PLQcwnINF6vUQbWmxTKl-jMYFw",
                          name: "صيدليات مصر",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
