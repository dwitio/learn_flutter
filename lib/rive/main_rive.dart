import 'package:belajar_flutter/rive/main_page_rive.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainRive());

class MainRive extends StatelessWidget {
  const MainRive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageRive(),
    );
  }
}
