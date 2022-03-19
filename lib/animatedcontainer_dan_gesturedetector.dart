import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerDanGestureDetector extends StatefulWidget {
  const AnimatedContainerDanGestureDetector({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerDanGestureDetector> createState() => _AnimatedContainerDanGestureDetectorState();
}

class _AnimatedContainerDanGestureDetectorState extends State<AnimatedContainerDanGestureDetector> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer Dan GestureDetector'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {

            });
          },
          child: AnimatedContainer(
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
            duration: const Duration(seconds: 1),
            width: 50.0 + random.nextInt(101),
            height: 50.0 + random.nextInt(101),
          ),
        ),
      ),
    );
  }
}
