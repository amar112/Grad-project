import 'package:flutter/material.dart';

import '../../MainWidgets/Animators/list_animator.dart';
import '../../MainWidgets/Basics/CustomNetworkImage.dart';
import '../edit_profile.dart';

class More extends StatefulWidget {
  const More({Key key}) : super(key: key);

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("More"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(15)),
            width: MediaQuery.of(context).size.width - 100,
            height: MediaQuery.of(context).size.height - 300,
            child: ListAnimator(
              children: [
                CustomNetworkImage().circleNewWorkImage(
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.width / 4,
                    image:
                        "https://e7.pngegg.com/pngimages/799/987/png-clipart-computer-icons-avatar-icon-design-avatar-heroes-computer-wallpaper.png"),
                Center(
                    child: Text(
                  "Mo'men l-Ashmawy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )),
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));

                    },child: viewPageTile("تعديل الملف الشخصي", Icons.person)),
                viewPageTile("مشاركة التطبيق", Icons.share),
                viewPageTile("تقيم التطبيق", Icons.star),
                viewPageTile("اللغة", Icons.language),
                viewPageTile("تسجيل الخروج", Icons.logout)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget viewPageTile(String lable, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "$lable",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
