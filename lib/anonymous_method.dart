import 'package:flutter/material.dart';

class AnonymousMethod extends StatefulWidget {
  const AnonymousMethod({Key? key}) : super(key: key);

  @override
  State<AnonymousMethod> createState() => _AnonymousMethodState();
}

class _AnonymousMethodState extends State<AnonymousMethod> {
  String message = 'ini adalah teks';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anonymous Method'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    message = 'Tombol sudah ditekan';
                  });
                }, child: const Text('Tekan saya')
            )
          ],
        ),
      ),
    );
  }
}
