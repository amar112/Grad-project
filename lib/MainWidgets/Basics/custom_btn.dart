import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/constants.dart';

class CustomBtn extends StatefulWidget {
  final String text;
  final Function onTap;
  final Color color;
  final Color txtColor;
  final bool fontWeight;
  final double hight;

  final double fontsize;

  const CustomBtn(
      {Key key, this.text, this.onTap, this.color, this.txtColor, this.fontWeight, this.hight, this.fontsize})
      : super(key: key);

  @override
  _CustomBtnState createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Container(
        height: widget.hight ?? 50,
        child: MaterialButton(
          onPressed: widget.onTap,
          color: widget.color ?? kPrimary,
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: widget.fontsize ?? 17,
                  color: widget.txtColor ?? Colors.white,
                  fontWeight: widget.fontWeight != true ? FontWeight.bold : FontWeight.normal ?? FontWeight.normal),
            ),
          ),
        ),
      ),
    );
  }
}
