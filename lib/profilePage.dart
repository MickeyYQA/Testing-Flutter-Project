import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.red[900],
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/sheep.jpeg"),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.red,
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 70,
                          height: 70,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.yellow,
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.indigo,
                      ),
                    ),
                    Expanded(child: Container()),
                    Expanded(child: Container()),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 70,
                          height: 70,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
