import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Style'),
      ),
      body: const Center(
        child: Text(
          'Ini adalah Text',
          style: TextStyle(
            fontFamily: "DancingScript",
            fontSize: 30,
            decoration: TextDecoration.overline,
            decorationColor: Colors.red,
            decorationThickness: 5,
            decorationStyle: TextDecorationStyle.wavy
          ),
        ),
      ),
    );
  }
}
