import 'package:flutter/material.dart';
import 'colorful_button.dart';

class ButtonBelahKetupatWarnaWarni extends StatelessWidget {
  const ButtonBelahKetupatWarnaWarni({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colorful Buttons'),),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorfulButton(Colors.pink, Colors.blue, Icons.adb),
            ColorfulButton(Colors.amber, Colors.red, Icons.comment),
            ColorfulButton(Colors.green, Colors.purple, Icons.computer),
            ColorfulButton(Colors.blue, Colors.yellow, Icons.contact_phone),
          ],
        ),
      ),
    );
  }
}
