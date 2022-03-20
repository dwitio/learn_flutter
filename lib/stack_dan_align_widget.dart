import 'package:flutter/material.dart';

class StackAlignWidget extends StatelessWidget {
  const StackAlignWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Dan Align Widget'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(flex: 1, child: Container(color: Colors.white,)),
                      Flexible(flex: 1, child: Container(color: Colors.black12,))
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(flex: 1, child: Container(color: Colors.black12,)),
                      Flexible(flex: 1, child: Container(color: Colors.white,))
                    ],
                  ))
            ],
          ),
          ListView(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'Ini adalah teks yang ada di lapisan tengah dari Stack.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'Ini adalah teks yang ada di lapisan tengah dari Stack.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'Ini adalah teks yang ada di lapisan tengah dari Stack.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'Ini adalah teks yang ada di lapisan tengah dari Stack.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'Ini adalah teks yang ada di lapisan tengah dari Stack.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'Ini adalah teks yang ada di lapisan tengah dari Stack.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: const Text(
                      'Ini adalah teks yang ada di lapisan tengah dari Stack.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      'Ini adalah teks yang ada di lapisan tengah dari Stack.',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              )
            ],
          ),
          Align(
            alignment: const Alignment(0, 0.90),
              child: RaisedButton(
                onPressed: () {},
                color: Colors.amber,
                child: const Text('My Button'),
              )
          )
        ],
      ),
    );
  }
}
