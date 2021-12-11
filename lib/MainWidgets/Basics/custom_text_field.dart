import 'package:flutter/material.dart';
import 'package:tmarjy_m3ak/constants.dart';

import '../../constants.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final IconData icon;
  final TextInputType type;
  final String hint;
  final int lines;
  final Function onChange;
  final Function validate;
  final Function onTap;
  final bool secure;
  final bool enable;
  final double viertcal;

  final TextEditingController controller;

  const CustomTextField({
    Key key,
    this.onTap,
    this.icon,
    this.enable,
    this.label,
    this.validate,
    this.type,
    this.hint,
    this.onChange,
    this.lines,
    this.controller,
    this.secure,
    this.viertcal,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextFormField(
        obscureText: widget.secure ?? false,
        enabled: widget.enable ?? true,
        maxLines: widget.lines ?? 1,
        // textAlign: TextAlign.right,
        keyboardType: widget.type,
        onTap: widget.onTap ?? () {},
        controller: widget.controller ?? null,
        onChanged: widget.onChange,
        validator: widget.validate,
        decoration: InputDecoration(
          filled: true,
          fillColor: kSecondary,
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(6),
            borderSide: new BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          hintText: widget.hint == null ? '' : widget.hint,
          hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          suffixIcon: widget.icon != null
              ? Icon(
                  widget.icon,
                  color: kPrimary,
                )
              : null,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }
}
