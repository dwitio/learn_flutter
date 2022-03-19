import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Container'
        ),
      ),
      body: Container(
        color: Colors.red,
        margin: const EdgeInsets.fromLTRB(10, 15, 20, 25),
        padding: const EdgeInsets.only(bottom: 20, top: 20),
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Colors.amber, Colors.blue]
            )
          ),
        ),
      ),
    );
  }
}
