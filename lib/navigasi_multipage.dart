import 'package:belajar_flutter/main_page.dart';
import 'package:flutter/material.dart';

class NavigasiMultiPage extends StatelessWidget {
  const NavigasiMultiPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('LOGIN'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          },
        ),
      ),
    );
  }
}
