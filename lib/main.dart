import 'package:belajar_flutter/animatedcontainer_dan_gesturedetector.dart';
import 'package:belajar_flutter/anonymous_method.dart';
import 'package:belajar_flutter/aplikasi_flutter_pertama.dart';
import 'package:belajar_flutter/container_widget.dart';
import 'package:belajar_flutter/list_dan_listview.dart';
import 'package:belajar_flutter/row_dan_column.dart';
import 'package:belajar_flutter/stateless_dan_stateful_widget.dart';
import 'package:belajar_flutter/text_widget.dart';
import 'package:belajar_flutter/textstyle.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnimatedContainerDanGestureDetector(),
    );
  }
}
