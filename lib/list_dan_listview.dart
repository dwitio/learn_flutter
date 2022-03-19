import 'package:flutter/material.dart';

class ListDanListView extends StatefulWidget {
  const ListDanListView({Key? key}) : super(key: key);

  @override
  State<ListDanListView> createState() => _ListDanListViewState();
}

class _ListDanListViewState extends State<ListDanListView> {
  int counter = 0;
  List<Widget> widgets = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List & ListView'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        'Data ke-' + counter.toString(),
                        style: const TextStyle(fontSize: 35),
                      ));
                      counter++;
                    });
                  },
                  child: const Text('Tambah Data')
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                  child: const Text('Hapus Data')
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    );
  }
}
