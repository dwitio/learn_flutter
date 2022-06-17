import 'package:flutter/material.dart';

void main() => runApp(Extension());

class Extension extends StatelessWidget {
  const Extension({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageExtension(),
    );
  }
}

class MainPageExtension extends StatelessWidget {
  final double x = -5;
  List<int> myList = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extension Demo'),
      ),
      body: Center(
        child: Text(
          "Bilangan:" & myList.midElement.toString(),
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

extension ListExtension<T> on List {
  T get midElement =>
      (this.length == 0) ? null : this[(this.length / 2).floor()];
}

extension NumberExtension<T extends num> on num {
  T negate() => -1 * this;
}

extension StringExtension on String {
  String operator &(String other) => this + "-" + other;
}
