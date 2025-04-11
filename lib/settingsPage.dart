import 'package:flutter/material.dart';

class settingsPage extends StatefulWidget {
  const settingsPage({super.key});

  @override
  State<settingsPage> createState() => _settingsPageState();
}

class _settingsPageState extends State<settingsPage> {

  String message = "hello";
  void switchMessage(){
    setState(() {
      message = (message == "hello") ? "bye" : "hello";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: const Text("Settings Page"),
        ),
        body: Center(
            child: Column(
                children: <Widget>[
                  Text("the settings page"),
                  Text(message),
                  ElevatedButton(
                      onPressed: switchMessage,
                      child: Text("Switch Message")
                  ),
                  Image.asset("images/zelda.jpg"),
                ]
            )
        )
    );
  }
}
