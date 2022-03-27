import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class ScanQrCode extends StatefulWidget {
  const ScanQrCode({key}) : super(key: key);

  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  String text = 'Hasil Scan QR';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QrCode Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            const SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () async {
                text = await scanner.scan();
                setState(() {});
              },
              child: const Text('Scan'),
            )
          ],
        ),
      ),
    );
  }
}
