import 'package:belajar_flutter/hive_database/model/monster.dart';
import 'package:belajar_flutter/hive_database/view/main_page_hive.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var appDocumentDirectory =
      await pathProvider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(MonsterAdapter(),);
  runApp(MainHive());
}

class MainHive extends StatelessWidget {
  const MainHive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPageHive(),
    );
  }
}
