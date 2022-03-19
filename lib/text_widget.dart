import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Widget'),
      ),
      body: Center(
          child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 100,
              child: const Text('Saya sedang melatih kemampuan flutter saya.',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w700,
                fontSize: 20
              ),)
          )
      ),
    );
  }
}
