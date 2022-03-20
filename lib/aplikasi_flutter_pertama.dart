import 'package:flutter/material.dart';

class Aplikasi_Flutter_Pertama extends StatelessWidget {
  const Aplikasi_Flutter_Pertama({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Flutter Pertama'),
      ),
      body: const Center(child: Text('Hello World!')),
    );
  }
}
