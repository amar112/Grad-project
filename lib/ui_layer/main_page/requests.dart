import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/components/order_row_item.dart';

import '../../MainWidgets/Animators/list_animator.dart';

class Requests extends StatefulWidget {
  const Requests({Key key}) : super(key: key);

  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("الطلبات"),
      ),
      body: ListAnimator(
        children: [
          OrderRowItem(),
          OrderRowItem(),
          OrderRowItem(),
          OrderRowItem(),
          OrderRowItem(),
          OrderRowItem(),
          OrderRowItem(),
        ],
      ),
    );
  }
}
