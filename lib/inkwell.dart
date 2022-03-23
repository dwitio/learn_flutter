import 'package:flutter/material.dart';

class Inkwells extends StatelessWidget {
  const Inkwells({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InkWell'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RaisedButton(
              onPressed: () {},
              color: Colors.amber,
              child: const Text('Raised Button'),
              shape: const StadiumBorder(),
            ),
            Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 2,
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: const Center(
                        child: Text(
                      'My Button',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
