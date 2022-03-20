import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Widget'),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      color: Colors.red,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      color: Colors.green,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      color: Colors.purple,
                    ),
                  ),
                ],
              )
          ),
          Flexible(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(5),
                color: Colors.yellow,
              )
          ),
          Flexible(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(5),
                color: Colors.blue,
              )
          ),
        ],
      ),
    );
  }
}