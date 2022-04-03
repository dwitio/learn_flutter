import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceWidget extends StatefulWidget {
  const SharedPreferenceWidget({key}) : super(key: key);

  @override
  State<SharedPreferenceWidget> createState() => _SharedPreferenceWidgetState();
}

class _SharedPreferenceWidgetState extends State<SharedPreferenceWidget> {
  TextEditingController controller = TextEditingController(text: 'No Name');
  bool isON = false;

  void saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('nama', controller.text);
    preferences.setBool('ison', isON);
  }

  Future<String> getNama() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString('nama') ?? 'No Name';
  }

  Future<bool> getON() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool('ison') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SharedPreference Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
            ),
            Switch(
                value: isON,
                onChanged: (newValue) {
                  setState(() {
                    isON = newValue;
                  });
                }),
            RaisedButton(
                child: const Text('Save'),
                onPressed: () {
                  saveData();
                }),
            RaisedButton(child: const Text('Load'), onPressed: () {
              getNama().then((value) {
                controller.text = value;
                setState(() {});
              });
              getON().then((value) {
                isON = value;
                setState(() {});
              });
            }),
          ],
        ),
      ),
    );
  }
}
