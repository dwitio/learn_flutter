import 'package:belajar_flutter/division/custom_button_division.dart';
import 'package:belajar_flutter/division/my_button_division.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:belajar_flutter/division/styles/custom_styles.dart';

void main() => runApp(MainDivision());

class MainDivision extends StatelessWidget {
  const MainDivision({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Txt(
          'Division Example',
          style: CustomStyles.txtStyle.clone()..fontSize(18),
        ),
        backgroundColor: Colors.red[900],
      ),
      backgroundColor: Colors.grey[800],
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtonDivision(CustomStyles.buttonStyle),
          SizedBox(
            height: 20,
          ),
          CustomButtonDivision(CustomStyles.buttonStyle.clone()
            ..background.color(Colors.green[300])
            ..border(all: 3, color: Colors.green[900]))
        ],
      )),
    );
  }
}
