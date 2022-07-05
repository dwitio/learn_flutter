import 'package:flutter/material.dart';

void main() => runApp(MainSemantics());

class MainSemantics extends StatelessWidget {
  const MainSemantics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageSemantic(),
    );
  }
}

class MainPageSemantic extends StatefulWidget {
  const MainPageSemantic({Key key}) : super(key: key);

  @override
  State<MainPageSemantic> createState() => _MainPageSemanticState();
}

class _MainPageSemanticState extends State<MainPageSemantic> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Semantics(
          hidden: true,
          excludeSemantics: true,
          child: Text('Aplikasi Aksesibilitas')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Semantics(
            onTapHint: "menambahkan bilangan dengan satu",
            child: Icon(Icons.plus_one)
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Semantics(
              label: "Ini adalah bilangan yang akan ditambahkan. Bilangan saat ini adalah",
              child: Text(number.toString(), style: TextStyle(
                fontSize: 60, fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
      ),
    );
  }
}
