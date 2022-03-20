import 'package:belajar_flutter/animatedcontainer_dan_gesturedetector.dart';
import 'package:belajar_flutter/anonymous_method.dart';
import 'package:belajar_flutter/aplikasi_flutter_pertama.dart';
import 'package:belajar_flutter/appbar_gradasi.dart';
import 'package:belajar_flutter/card_widget.dart';
import 'package:belajar_flutter/container_widget.dart';
import 'package:belajar_flutter/draggable_dragtarget_sizedbox_material.dart';
import 'package:belajar_flutter/flexible_widget.dart';
import 'package:belajar_flutter/image_widget.dart';
import 'package:belajar_flutter/list_dan_listview.dart';
import 'package:belajar_flutter/navigasi_multipage.dart';
import 'package:belajar_flutter/row_dan_column.dart';
import 'package:belajar_flutter/spacer_widget.dart';
import 'package:belajar_flutter/stack_dan_align_widget.dart';
import 'package:belajar_flutter/stateless_dan_stateful_widget.dart';
import 'package:belajar_flutter/text_widget.dart';
import 'package:belajar_flutter/textfield_widget.dart';
import 'package:belajar_flutter/textstyle.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TextFieldWidget(),
    );
  }
}
