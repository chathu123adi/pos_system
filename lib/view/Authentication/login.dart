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
  bool isObscureText = true;
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
            color: Theme.of(context).primaryColor,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(splash)),
              SizedBox(height: 10,),
              Center(
                  child: SizedBox(
                    width: 600,
                    child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                      child: Container (
                        padding: EdgeInsets.all(50),
                        child: Column(
                          children: [

                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Padding(padding: EdgeInsets.all(20), child: Icon(Icons.person, size: 40,),),
                                labelText: "Username",
                                hintText: "Username",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                                // prefixIcon: Icon(Icons.account_circle, size: 40, ),
                              ),
                            ),

                            SizedBox(height: 40,),

                            TextField(
                              obscureText: isObscureText,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                prefixIcon: Padding(padding: EdgeInsets.all(20), child: Icon(Icons.lock, size: 40,),),
                                labelText: "Password",
                                hintText: "Password",
                                suffixIcon: IconButton (
                                  icon: isObscureText ? Icon(Icons.visibility, size: 32,) : Icon(Icons.visibility_off, size: 32,),
                                  onPressed: () {
                                    setState(() {
                                      isObscureText = !isObscureText;
                                    });
                                  },
                                )
                              ),
                            ),

                            SizedBox(height: 10,),

                            SizedBox(height: 10,),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(onPressed: (){}, child: Text("Forgot Password", style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: btnColor),)),
                                SizedBox(height: 10,),
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Theme.of(context).primaryColor, 
                                      foregroundColor: textColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)
                                    ),
                                    padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10)
                                  ),
                                    onPressed: (){},
                                    child: Text("Login")
                                ),
                                SizedBox(height: 10,),
                                TextButton(onPressed: (){}, child: Text("SIGNUP", style: TextStyle(color: btnColor),)),

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