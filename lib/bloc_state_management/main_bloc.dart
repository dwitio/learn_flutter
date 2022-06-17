import 'package:belajar_flutter/bloc_state_management/bloc_state_management.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainBloc());

class MainBloc extends StatelessWidget {
  const MainBloc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlockStateManagement(),
      ),
    );
  }
}
