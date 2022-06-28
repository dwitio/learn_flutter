import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/division/styles/custom_styles.dart';

class CustomButtonDivision extends StatefulWidget {
  final ParentStyle buttonStyle;

  const CustomButtonDivision(this.buttonStyle, {Key key}) : super(key: key);

  @override
  State<CustomButtonDivision> createState() => _CustomButtonDivisionState();
}

class _CustomButtonDivisionState extends State<CustomButtonDivision> {
  bool isTapDown = false;

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
         child: Txt(
           "division",
           style: CustomStyles.txtStyle
         ),
      ),
      style: widget.buttonStyle.clone()
        ..scale((isTapDown) ? 1.1 : 1)
        ..elevation((isTapDown) ? 0 : 5),
      gesture: Gestures()
      ..onTapDown((details) {
        setState(() {
          isTapDown = true;
        });
      })
      ..onTapUp((details) {
        setState(() {
          isTapDown = false;
        });
      })
    );
  }
}
