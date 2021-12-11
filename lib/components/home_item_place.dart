import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/MainWidgets/Basics/CustomNetworkImage.dart';
import 'package:tmarjy_m3ak/ui_layer/palce_details.dart';

class HomeItemPlace extends StatelessWidget {
  final String image, name;

  const HomeItemPlace({Key key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PlaceDetails(
                      image: image,
                      name: name,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Container(
          decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                CustomNetworkImage().containerNewWorkImage(
                    image: image ??
                        "https://w7.pngwing.com/pngs/891/522/png-transparent-health-care-public-health-medicine-hospital-health-logo-medical-care-mental-health.png",
                    width: MediaQuery.of(context).size.width / 2.3,
                    height: MediaQuery.of(context).size.width / 3,
                    radius: 25,
                    fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "$name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
