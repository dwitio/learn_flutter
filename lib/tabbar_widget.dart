import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = const TabBar(
      indicator: BoxDecoration(
        color: Colors.red,
        border: Border(top: BorderSide(color: Colors.purple, width: 5))
      ),
      tabs: [
        Tab(
          icon: Icon(Icons.comment),
          text: 'Comments',
        ),
        Tab(
          icon: Icon(Icons.computer),
          text: 'Computers',
        ),
      ],
    );
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Contoh Tab Bar'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(
                  color: Colors.amber,
                child: myTabBar
                )
            )
          ),
          body: const TabBarView(
            children: [
              Center(
                child: Text('Tab 1'),
              ),
              Center(
                child: Text('Tab 2'),
              ),
            ],
          ),
        ));
  }
}
