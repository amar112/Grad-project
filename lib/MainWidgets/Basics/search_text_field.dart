import 'package:flutter/material.dart';

class CustomSearchTextField extends StatefulWidget {
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

  const CustomSearchTextField({
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
  _CustomSearchTextFieldState createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
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
          fillColor: Colors.grey[200].withOpacity(0.5),
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
          hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          labelStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
      ),
    );
  }
}
