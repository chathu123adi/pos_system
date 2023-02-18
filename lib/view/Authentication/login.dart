import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pos_system/utils/constant/image_string.dart';
import 'package:pos_system/utils/media.dart';

import '../../utils/constant/colors.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Login();

}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      // appBar: AppBar(
      //   title: Text("Welcome to pos system", ),
      // ),

      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            color: loginBgColor,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(splash)),
              Center(
                  child: SizedBox(
                    width: 600,
                    child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Container (
                        padding: EdgeInsets.all(50),
                        child: Column(
                          children: [

                            TextField(),

                            TextField(),

                            Column(
                              children: [
                                TextButton(onPressed: (){}, child: Text("Forgot Password", )),
                                TextButton(
                                  style: TextButton.styleFrom(backgroundColor: Theme.of(context).primaryColor, foregroundColor: textColor),
                                    onPressed: (){},
                                    child: Text("Login")
                                ),
                                TextButton(onPressed: (){}, child: Text("SignUp")),

                              ],
                            )
                          ],
                        ),
                      )
                    )
                  )
              ),
            ],
          ),

        ],
      ),
    );
  }

}