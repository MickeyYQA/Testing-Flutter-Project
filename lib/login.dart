import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String usernameText = "";
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String hint = "Logged out";
  void checkUsernameInput() {
    setState(() {
      usernameText = usernameController.text;
      hint = usernameController.text == ""? "Username cannot be empty" : "Logged in as $usernameText";
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
              Image.asset("images/logo.png"),
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                onPressed: checkUsernameInput,
                child: Text("Login")
              ),
              Text(hint),
            ])));
  }
}
