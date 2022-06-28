import 'package:belajar_flutter/widget_slider/ui/styles/styles.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class MovieBox extends StatelessWidget {
  final String url;
  final double scale;

  const MovieBox(this.url, {this.scale = 1, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Parent(
      style: parentStyle.clone()..background.image(url: url, fit: BoxFit.cover)..width(200 * scale)..height(300 * scale),
    );
  }
}
