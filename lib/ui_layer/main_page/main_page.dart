import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:tmarjy_m3ak/constants.dart';
import 'package:tmarjy_m3ak/ui_layer/main_page/requests.dart';
import 'package:tmarjy_m3ak/ui_layer/main_page/services.dart';

import '../../constants.dart';
import 'home.dart';
import 'more.dart';
import 'notifications.dart';

class MainPage extends StatefulWidget {
  final int index;

  const MainPage({Key key, this.index}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedItemPosition = 0;
  TextStyle labelTextStyle = TextStyle(color: kPrimary, fontSize: 11, fontFamily: 'RB', fontWeight: FontWeight.bold);

  List<Widget> screens = [
    HomePage(),
    Services(),
    Requests(),
    UserNotifications(),
    More(),
  ];

  SnakeShape snakeShape = SnakeShape.indicator;

  void checkPage() {
    if (widget.index == null) {
      setState(() {
        _selectedItemPosition = 0;
      });
    } else {
      setState(() {
        _selectedItemPosition = widget.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: screens[_selectedItemPosition],
        bottomNavigationBar: SnakeNavigationBar.color(
          height: 65,
          selectedLabelStyle: labelTextStyle,
          // snakeShape: snakeShape,
          // shape: bottomBarShape,
          unselectedItemColor: kSecondary.withOpacity(0.5),
          backgroundColor: kPrimary,
          elevation: 5,
          snakeViewColor: kPrimary.withOpacity(0.5),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          onTap: (index) {
            setState(() {
              _selectedItemPosition = index;
            });
          },
          selectedItemColor: kSecondary,
          currentIndex: _selectedItemPosition,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "الرئيسية"),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined), label: "التصنيفات"),

            BottomNavigationBarItem(icon: Icon(Icons.reorder_outlined), label: "الطلبات"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined), label: "الاشعارات"),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined), label: "المزيد"),
          ],
        ),
      ),
    );
  }
}
