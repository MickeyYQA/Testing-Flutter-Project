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
        child: Column(
          // set row or column here
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.red,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 500,
                        width: 100,
                        color: Colors.orange,
                      ),
                      Expanded(
                        child: Container(
                          height: 500,
                          color: Colors.yellow,
                          padding: EdgeInsets.all(30),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                height: 50, 
                                color: Colors.green,),
                              Container(
                                
                                height: 300,
                                 color: Colors.blue,),
                            ],)
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
