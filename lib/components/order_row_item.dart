import 'package:flutter/material.dart';

import '../MainWidgets/Basics/CustomNetworkImage.dart';
import '../constants.dart';

class OrderRowItem extends StatelessWidget {
  const OrderRowItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          height: MediaQuery.of(context).size.height / 7,
          child: Row(
            children: [
              CustomNetworkImage().containerNewWorkImage(
                radius: 10,
                height: MediaQuery.of(context).size.height / 7,
                width: MediaQuery.of(context).size.height / 7,
                image:
                    "https://1.bp.blogspot.com/-Okeogkb-7r4/X8JNerFT9mI/AAAAAAAAoe0/cUqlGYSrgDA1p0N0V9w-MyqYcsiWkuikQCLcBGAsYHQ/s580/%25D9%2588%25D8%25B8%25D8%25A7%25D8%25A6%25D9%2581-%25D8%25B5%25D9%258A%25D8%25AF%25D9%2584%25D9%258A%25D8%25A7%25D8%25AA-%25D8%25A7%25D9%2584%25D8%25B9%25D8%25B2%25D8%25A8%25D9%2589.jpg",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "صيدلية العزبي",
                      style: TextStyle(color: kPrimary, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        ),
                        Text(
                          "المنصورة حي الجامعة",
                          style: TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Icon(

                              Icons.star,
                              color: Colors.orange,
                            size: 15,
                            );
                          }),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
