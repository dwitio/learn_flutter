import 'package:flutter/material.dart';

class SwitchAnimatedSwitcher extends StatefulWidget {
  const SwitchAnimatedSwitcher({key}) : super(key: key);

  @override
  State<SwitchAnimatedSwitcher> createState() => _SwitchAnimatedSwitcherState();
}

class _SwitchAnimatedSwitcherState extends State<SwitchAnimatedSwitcher> {
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Switcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
              child: myWidget,
              duration: const Duration(seconds: 1),
              transitionBuilder: (child, animation) => RotationTransition(
                turns: animation,
                child: child,
              ),
            ),
            Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                inactiveTrackColor: Colors.red[200],
                value: isON,
                onChanged: (newValue) {
                  isON = newValue;
                  setState(() {
                    if (isON) {
                      myWidget = Container(
                        key: const ValueKey(1),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 3)),
                      );
                    } else {
                      myWidget = Container(
                        key: const ValueKey(2),
                        width: 200,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: Colors.black, width: 3)),
                      );
                    }
                  });
                })
          ],
        ),
      ),
    );
  }
}
