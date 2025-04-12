import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String greeting = "hello";
  void changeWord() {
    setState(() {
      greeting = greeting == "hello" ? "goodbye" : "hello";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contact Page"),
        ),
        body: Center(
            child: Column(// set row or column here
                children: [
          //Expanded(child: Container(color: Colors.pink, height: 100)),
          //Expanded(child: Container(color: Colors.orange, height: 100)),
          //Expanded(child: Container(color: Colors.yellow, height: 100)),
          Text('$greeting'),
          ElevatedButton(
            onPressed: changeWord,
            child: Text("Elevated Button"),
          ),
          TextButton(
            onPressed: changeWord,
            child: Text("Text Button"),
          ),
          IconButton(
            onPressed: changeWord,
            icon: Icon(Icons.change_circle, color: Colors.red, size: 25),
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud m.",
            softWrap: true,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
            textAlign: TextAlign.justify,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
                hintText: "username",
              ),
              onChanged: (String text) {
                print("The username is $text");
              },
              autocorrect: true,
              maxLength: 20,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ])));
  }
}
