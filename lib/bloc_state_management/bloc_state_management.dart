import 'package:belajar_flutter/bloc_state_management/color_bloc.dart';
import 'package:flutter/material.dart';

class BlockStateManagement extends StatefulWidget {
  const BlockStateManagement({key}) : super(key: key);

  @override
  State<BlockStateManagement> createState() => _BlockStateManagementState();
}

class _BlockStateManagementState extends State<BlockStateManagement> {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = ColorBloc();
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_amber);
              }),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_light_blue);
              }),
        ],
      ),
      appBar: AppBar(
        title: const Text('BLoC tanpa Library'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: bloc.stateStream,
          initialData: Colors.amber,
          builder: (context, snapshot) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 100,
              height: 100,
              color: snapshot.data,
            );
          },
        ),
      ),
    );
  }
}
