import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/components/NotificationItem.dart';

class UserNotifications extends StatefulWidget {
  const UserNotifications({Key key}) : super(key: key);

  @override
  _UserNotificationsState createState() => _UserNotificationsState();
}

class _UserNotificationsState extends State<UserNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("الاشعارات"),
      ),
      body: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
        return NotificationItem(
          index: index,
        );
      }),
    );
  }
}
