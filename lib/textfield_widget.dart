import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({key}) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Widget'),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.lightBlue[50],
                filled: true,
                icon: const Icon(Icons.adb),
                suffix: Container(width: 5, height: 5, color: Colors.red,),
                prefixIcon: const Icon(Icons.person),
                prefixText: "Name: ",
                prefixStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                labelText: "Nama Lengkap",
                hintText: "Nama lengkapnya lho..",
                hintStyle: const TextStyle(fontSize: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                )

              ),
              maxLength: 5,
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(
              controller.text
            )
          ],
        ),
      ),
    );
  }
}
