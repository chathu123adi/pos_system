import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login();

}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to pos system"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.red,
              child: Column (
                children: [
                  TextField(),
                  TextField()
                ],
              )
            )
          ],
        ),
      ),
    );
  }

}