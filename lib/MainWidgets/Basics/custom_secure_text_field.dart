import 'package:flutter/material.dart';

class CustomSecureTextField extends StatefulWidget {
  final String label;
  final bool obscureText;
  final VoidCallback onPressed;
  final bool withIcon;
  final Function onChange;
  final Function validate;

  const CustomSecureTextField({
    Key key,
    this.obscureText,
    this.onPressed,
    this.withIcon,
    this.validate,
    this.label,
    this.onChange,
  }) : super(key: key);

  @override
  _CustomSecureTextFieldState createState() => _CustomSecureTextFieldState();
}

class _CustomSecureTextFieldState extends State<CustomSecureTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: TextFormField(
        textAlign: TextAlign.left,
        onChanged: widget.onChange,
        validator: widget.validate,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          labelText: widget.label,
          suffixIcon: widget.withIcon == true
              ? Padding(
                  padding: EdgeInsets.all(6),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black12),
                    child: widget.obscureText
                        ? InkWell(
                            onTap: widget.onPressed,
                            child: Icon(Icons.visibility_off),
                          )
                        : InkWell(
                            onTap: widget.onPressed,
                            child: Icon(Icons.visibility),
                          ),
                  ))
              : null,
          contentPadding: EdgeInsets.only(right: 10, bottom: 5, left: 5),
        ),
      ),
    );
  }
}
