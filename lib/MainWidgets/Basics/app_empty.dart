import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppEmpty extends StatefulWidget {
  final String text, assetImage;

  const AppEmpty({Key key, this.text, this.assetImage}) : super(key: key);

  @override
  _AppEmptyState createState() => _AppEmptyState();
}

class _AppEmptyState extends State<AppEmpty> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset('${widget.assetImage ?? "assets/animations/empty_app.json"}'),
        SizedBox(height: 20),
        Text(widget.text ?? 'لا توجد منتجات',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, color: Colors.grey))
      ],
    );
  }
}
