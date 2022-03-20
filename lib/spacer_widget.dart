import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer Widget'),
      ),
      body: Center(
        child: Row(
          children: [
            const Spacer(flex: 1,),
            Container(width: 80, height: 80, color: Colors.red,),
            const Spacer(flex: 2,),
            Container(width: 80, height: 80, color: Colors.green,),
            const Spacer(flex: 3,),
            Container(width: 80, height: 80, color: Colors.blue,),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
