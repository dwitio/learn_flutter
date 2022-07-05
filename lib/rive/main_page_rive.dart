import 'package:belajar_flutter/rive/switch_day_night.dart';
import 'package:flutter/material.dart';

class MainPageRive extends StatelessWidget {
  const MainPageRive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Rive + Flutter'),
      ),
      body: Center(
        child: SwitchDayNight(),
      ),
    );
  }
}
