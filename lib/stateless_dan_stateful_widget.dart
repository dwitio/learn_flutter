import 'package:flutter/material.dart';

class StatelessDanStatefulWidget extends StatefulWidget {
  const StatelessDanStatefulWidget({Key? key}) : super(key: key);

  @override
  State<StatelessDanStatefulWidget> createState() => _StatelessDanStatefulWidgetState();
}

class _StatelessDanStatefulWidgetState extends State<StatelessDanStatefulWidget> {
  int number = 0;
  void tekanTombol(){
    setState(() {
      number = number + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(), style: TextStyle(fontSize: 10 + number.toDouble()),),
              ElevatedButton(
                  child: const Text('Tambah Bilangan'),
                  onPressed: tekanTombol
              )
            ],
          ),
        ),
      ),
    );
  }
}
