import 'package:belajar_flutter/widget_slider/ui/pages/main_page_widget_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainWidgetSlider());

class MainWidgetSlider extends StatelessWidget {
  const MainWidgetSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageWidgetSlider(),
    );
  }
}
