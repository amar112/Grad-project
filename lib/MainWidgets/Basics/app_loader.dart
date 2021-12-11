import 'package:tmarjy_m3ak/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppLoader extends StatefulWidget {
  final String title;

  const AppLoader({Key key, this.title}) : super(key: key);

  @override
  _AppLoaderState createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/1.5,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SpinKitThreeBounce(
            color: kPrimary,
          ),
          SizedBox(height: 20),
          Text(widget.title ?? '',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.grey))
        ],
      ),
    );
  }
}
