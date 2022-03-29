import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({key}) : super(key: key);

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Padding'),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: const Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              myPadding = 20;
                            });
                          },
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: const Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.green,
                        ),
                      )),
                ],
              )),
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: const Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.blue,
                        ),
                      )),
                  Flexible(
                      flex: 1,
                      child: AnimatedPadding(
                        duration: const Duration(seconds: 1),
                        padding: EdgeInsets.all(myPadding),
                        child: Container(
                          color: Colors.yellow,
                        ),
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
