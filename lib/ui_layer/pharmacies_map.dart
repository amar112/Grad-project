import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tmarjy_m3ak/ui_layer/send_roshitta.dart';

import '../MainWidgets/Basics/custom_btn.dart';
import '../MainWidgets/Basics/custom_text_field.dart';
import '../constants.dart';

class PharmaciesMap extends StatefulWidget {
  @override
  _PharmaciesMapState createState() => _PharmaciesMapState();
}

class _PharmaciesMapState extends State<PharmaciesMap> {
  String name, address, hotline;

  Completer<GoogleMapController> _controller = Completer();
  Iterable markers = [];
  Iterable _markers = Iterable.generate(AppConstant.list.length, (index) {
    return Marker(
        markerId: MarkerId(AppConstant.list[index]['id']),
        position: LatLng(
          AppConstant.list[index]['lat'],
          AppConstant.list[index]['lon'],
        ),
        infoWindow: InfoWindow(title: AppConstant.list[index]["title"], onTap: () {}));
  });

  @override
  void initState() {
    setState(() {
      markers = _markers;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "العزبي",
                      style: TextStyle(color: kSecondary, fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      " (الاقرب اليك)",
                      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                ),
                Text(
                  "المنصورة - قناة السويس - بجوار بنك كريديك اجريكول",
                  style: TextStyle(color: kSecondary, fontWeight: FontWeight.normal, fontSize: 16),
                ),
                CustomBtn(
                  txtColor: kPrimary,
                  color: kSecondary,
                  text: "إرسال روشتة",
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SendRoshitta()));
                  },
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: kPrimary,
              borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))),
        ),
        appBar: AppBar(
          title: Text('صيدليات'),
        ),
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(target: LatLng(31.0409, 31.3785), zoom: 13),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: Set.from(markers),
            ),
            Column(
              children: [
                CustomTextField(
                  hint: " بحث",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AppConstant {
  static List<Map<String, dynamic>> list = [
    {
      "title": "الطرشوبي",
      "id": "1",
      "lat": 31.0409,
      "lon": 31.3785,
      "address": "المنصورة حي الجامعة  بجوال الراتب الشامي",
      "hotline": "19023"
    },
    {
      "title": "صيدليات مصر",
      "id": "2",
      "lat": 31.0260,
      "lon": 31.3785,
      "address": "المنصورة حي الزعفران شارع الامام المهدي",
      "hotline": "19003"
    },
    {
      "title": "19011",
      "id": "3",
      "lat": 31.0209,
      "lon": 31.3785,
      "address": "المنصورة شارع الجيش - مصر الطيران",
      "hotline": "19003"
    },
    {
      "title": "العزبي",
      "id": "3",
      "lat": 31.0109,
      "lon": 31.3785,
      "address": "12 - حي الاشجار - المنصورة",
      "hotline": "19003"
    },
  ];
}
