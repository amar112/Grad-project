import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/constants.dart';

class HomeItemCategory extends StatelessWidget {
  final String image, name, type;

  const HomeItemCategory({Key key, this.image, this.name, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) => GeneralCare(name: name, type: type)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.width / 7,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(color: kSecondary, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
