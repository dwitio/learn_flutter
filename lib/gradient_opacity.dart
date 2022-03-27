import 'package:flutter/material.dart';

class GradientOpacity extends StatelessWidget {
  const GradientOpacity({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gradient Opacity'),
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (rectangle) {
            return const LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
          },
          blendMode: BlendMode.dstIn,
          child: const Image(
            width: 300,
            image: AssetImage(
                'images/bg.jpg'
            ),
          ),
        ),
      ),
    );
  }
}
