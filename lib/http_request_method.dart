import 'package:belajar_flutter/post_result_model.dart';
import 'package:belajar_flutter/user_model_list.dart';
import 'package:flutter/material.dart';

class HttpRequestMethod extends StatefulWidget {
  const HttpRequestMethod({key}) : super(key: key);

  @override
  State<HttpRequestMethod> createState() => _HttpRequestMethodState();
}

class _HttpRequestMethodState extends State<HttpRequestMethod> {
  PostResult postResult;
  User user;
  String output = 'no data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP Request'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(child: Text(output)),
            RaisedButton(
              onPressed: () {
                User.getUsers("2").then((users) {
                  output = "";
                  for(int i = 0; i < users.length; i++){
                    output = output + '[ ' + users[i].name + ' ]';
                    setState(() {});
                  }
                });
                setState(() {});
              },
              child: const Text('GET'),
            )
          ],
        ),
      ),
    );
  }
}
