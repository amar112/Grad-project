import 'package:flutter/material.dart';

import '../MainWidgets/Animators/list_animator.dart';
import '../MainWidgets/Basics/CustomNetworkImage.dart';
import '../MainWidgets/Basics/custom_btn.dart';
import '../MainWidgets/Basics/custom_text_field.dart';
import '../constants.dart';
import '../constants.dart';
import '../constants.dart';
import 'main_page/main_page.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({Key key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: ListAnimator(
          children: [
            SizedBox(height: 50,),
            CustomNetworkImage().circleNewWorkImage(
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.width / 4,
                image:
                "https://scontent.fcai19-5.fna.fbcdn.net/v/t1.6435-9/118586967_1988241134642114_6756021255591632389_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=174925&_nc_ohc=ZP3L4FwquOoAX_AZcYE&_nc_ht=scontent.fcai19-5.fna&oh=ee0acee50ced1870de17eca8fd884831&oe=60E4A169"),
            CustomTextField(
              hint: "كريم طه",
              icon: Icons.person,
            ),
            CustomTextField(
              hint: "karimtahaa96@gmail.com",
              icon: Icons.mail,
            ),
            CustomTextField(
              hint: "01003977705",
              icon: Icons.call,
            ),
            CustomTextField(
              hint: "186 - المعادي - شارع 9 ",
              icon: Icons.location_pin,
            ),
            CustomTextField(
              hint: "*********",
              icon: Icons.lock,

            ),
            CustomTextField(
              hint: "*********",
              icon: Icons.lock,
            ),
            CustomBtn(
              text: "حفظ",
              color: kPrimary,
              txtColor: kSecondary,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
              },
            ),

          ],
        ),
      ),
    );
  }
}
