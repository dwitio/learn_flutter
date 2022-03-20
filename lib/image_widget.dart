import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          width: 200,
          height: 200,
          padding: const EdgeInsets.all(3),
          child: const Image(
            image: AssetImage(
              "images/kucing.jpg",
            ),
            fit: BoxFit.contain,
            repeat: ImageRepeat.repeat,
          ),
        ),
      ),
    );
  }
}
