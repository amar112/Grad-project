import 'package:flutter/material.dart';

import '../constants.dart';
import '../constants.dart';

class NotificationItem extends StatelessWidget {
  final int index;

  const NotificationItem({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5 , bottom: 1),
      child: Container(
        height: MediaQuery.of(context).size.height / 12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
            color: index == 0
                ? Color(0xff71d0b1)
                : index == 1
                    ? Color(0xff71d0b1)
                    : index == 2
                        ? Color(0xff71d0b1)
                        : Colors.white10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 8),
          child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                index == 0
                    ?  "طلبك قيد التنفيذ"
                    : index == 1
                    ?  "طلبك قيد التنفيذ"
                    : index == 2
                    ?  "طلبك قيد التنفيذ"
                    : "تم تنفيذ طلبك بنجاح",
                style: TextStyle(color: index == 0
                  ? Colors.white
                  : index == 1
                      ? Colors.white
                      : index == 2
                          ? Colors.white
                          : Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "منذ 1 دقيقة",
                  style: TextStyle(color: index == 0
                    ? Colors.black
                    : index == 1
                        ? Colors.black
                        : index == 2
                            ? Colors.black
                            : Colors.grey, fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
