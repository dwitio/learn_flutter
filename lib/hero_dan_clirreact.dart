import 'package:flutter/material.dart';

class HeroDanClipRReact extends StatelessWidget {
  const HeroDanClipRReact({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Latihan hero animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const SecondPage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: const Image(
                fit: BoxFit.cover,
                image: AssetImage('images/kucing.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Latihan hero animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 200,
              height: 200,
              child: const Image(
                fit: BoxFit.cover,
                image: AssetImage('images/kucing.jpg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
