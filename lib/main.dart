import 'package:belajar_flutter/animated_padding_widget.dart';
import 'package:belajar_flutter/animatedcontainer_dan_gesturedetector.dart';
import 'package:belajar_flutter/anonymous_method.dart';
import 'package:belajar_flutter/aplikasi_flutter_pertama.dart';
import 'package:belajar_flutter/appbar_gradasi.dart';
import 'package:belajar_flutter/appbar_with_custom_height.dart';
import 'package:belajar_flutter/application_color.dart';
import 'package:belajar_flutter/bloc_state_management/bloc_state_management.dart';
import 'package:belajar_flutter/button_belah_ketupat_warna_warni.dart';
import 'package:belajar_flutter/card_widget.dart';
import 'package:belajar_flutter/clippath_widget.dart';
import 'package:belajar_flutter/container_widget.dart';
import 'package:belajar_flutter/counter_cubit.dart';
import 'package:belajar_flutter/counter_page.dart';
import 'package:belajar_flutter/doc_comment.dart';
import 'package:belajar_flutter/draggable_dragtarget_sizedbox_material.dart';
import 'package:belajar_flutter/flexible_widget.dart';
import 'package:belajar_flutter/font_features.dart';
import 'package:belajar_flutter/gradient_opacity.dart';
import 'package:belajar_flutter/hero_dan_clirreact.dart';
import 'package:belajar_flutter/http_request_method.dart';
import 'package:belajar_flutter/image_widget.dart';
import 'package:belajar_flutter/inkwell.dart';
import 'package:belajar_flutter/list_dan_listview.dart';
import 'package:belajar_flutter/media_query.dart';
import 'package:belajar_flutter/memainkan_musik.dart';
import 'package:belajar_flutter/multi_provider_widget.dart';
import 'package:belajar_flutter/navigasi_multipage.dart';
import 'package:belajar_flutter/opacity_custom_card.dart';
import 'package:belajar_flutter/position_floatingactionbutton_loginpage.dart';
import 'package:belajar_flutter/provider_state_management.dart';
import 'package:belajar_flutter/qrcode_widget.dart';
import 'package:belajar_flutter/row_dan_column.dart';
import 'package:belajar_flutter/scan_qrcode.dart';
import 'package:belajar_flutter/sharedpreference_widget.dart';
import 'package:belajar_flutter/spacer_widget.dart';
import 'package:belajar_flutter/stack_dan_align_widget.dart';
import 'package:belajar_flutter/stateless_dan_stateful_widget.dart';
import 'package:belajar_flutter/switch_animatedswitcher.dart';
import 'package:belajar_flutter/tabbar_widget.dart';
import 'package:belajar_flutter/text_widget.dart';
import 'package:belajar_flutter/textfield_widget.dart';
import 'package:belajar_flutter/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final DocComment docComment = DocComment(
    name: "Yuda",
    role: "Gatotkaca",
    photoURL: "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/02/22/1296165885.jpg",
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red[900],
            title: Text("Doc Comment Example"),
          ),
          body: Center(child: docComment,),
        )
    );
  }
}
