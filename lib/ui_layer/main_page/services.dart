import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/components/service_item.dart';

import '../../MainWidgets/Animators/grid_animator.dart';
import '../category_details.dart';
import '../pharmacies_map.dart';

class Services extends StatefulWidget {
  const Services({Key key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("التصنيفات"),
      ),
      body: GridAnimator(
        crossCount: 2,
        data: [
          ServiceItem(
            image: "images/x-ray.png",
            name: "مراكز الاشعة",
            num: "120 مركز",
          ),
          ServiceItem(
            image: "images/analysis.png",
            name: "معامل  التحاليل",
            num: "102 معمل",

          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GeneralCare()));
            },
            child: ServiceItem(
              image: "images/nurse.png",
              name: "ممرضين",
              num: "80  ممرض",
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>PharmaciesMap()));
            },
            child: ServiceItem(
              image: "images/pharmacy.png",
              name: "صيدليات",
              num: "43 صيدلية",
            ),
          ),
          ServiceItem(
            image: "images/stethoscope (1).png",
            name: "أطباء",
            num: "31 طبيب",

          ),
        ],
      ),
    );
  }
}
