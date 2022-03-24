import 'package:flutter/material.dart';

class AppBarWithCustomHeight extends StatelessWidget {
  const AppBarWithCustomHeight({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          backgroundColor: Colors.amber,
          flexibleSpace: Stack(children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                  'Appbar with Custom Height',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
