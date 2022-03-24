import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrcodeWidget extends StatelessWidget {
  const QrcodeWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: QrImage(
          version: 6,
          backgroundColor: Colors.grey,
          foregroundColor: Colors.black,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: const EdgeInsets.all(30),
          size: 300,
          data: 'https://kotlinlang.org/',
        ),
      ),
    );
  }
}
