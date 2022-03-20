import 'package:flutter/material.dart';

class AppBarGradasi extends StatelessWidget {
  const AppBarGradasi({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.adb),
        title: const Text('AppBar Example'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.exit_to_app)
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight
            ),
            image: DecorationImage(
              image: AssetImage('images/pattern.png'),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat
            )
          ),
        ),
      ),
    );
  }
}
