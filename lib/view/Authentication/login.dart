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
      // backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text("Welcome to pos system"),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              // color: Colors.red,
              child: Column (
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text("heading", style: Theme.of(context).textTheme.headline2,),
                  Text("sub heading", style: Theme.of(context).textTheme.subtitle1,),
                  Text("pragraph", style: Theme.of(context).textTheme.bodyText1,),
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