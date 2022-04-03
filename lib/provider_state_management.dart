import 'package:belajar_flutter/application_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderStateManagement extends StatelessWidget {
  const ProviderStateManagement({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Consumer<ApplicationColor>(
            builder: (context, value, child) =>
                Text(
                  'Provider State Management',
                  style: TextStyle(color: value.color),
                )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<ApplicationColor>(
              builder: (context, value, child) =>
                  AnimatedContainer(
                      margin: const EdgeInsets.all(5),
                      width: 100,
                      height: 100,
                      color: value.color,
                      duration: const Duration(milliseconds: 500)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: const Text('AB'),
                ),
                Consumer<ApplicationColor>(
                    builder: (context, value, child) =>
                        Switch(value: value.isLightBlue, onChanged: (newValue) {
                          value.isLightBlue = newValue;
                        })
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: const Text('LB'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
