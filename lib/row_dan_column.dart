import 'package:flutter/material.dart';

class RowDanColumn extends StatelessWidget {
  const RowDanColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Row dan Column'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Text 1'),
          const Text('Text 2'),
          const Text('Text 3'),
          Row(
            children: const [
              Text('Text 4'),
              Text('Text 5'),
              Text('Text 6'),
            ],
          )
        ],
      ),
    );
  }
}
