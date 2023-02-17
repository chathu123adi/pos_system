import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pos_system/utils/constant/image_string.dart';
import 'package:pos_system/utils/constant/sizes.dart';
import 'package:pos_system/view/Authentication/login.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(Duration(seconds: 3), () {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Login()));
    // });
    startAnimated();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      // debugShowCheckedModeBanner: false,
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: (height/2) - 120 ,
              left: animate ? (width/2 -175) : -500,
              child: Image(image: AssetImage(splash),)
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
              bottom: (height/2) - 275,
              right: animate ? (width/2 -150): -500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Shopping", style: Theme.of(context).textTheme.headline2,),
                  Text("Pay", style: Theme.of(context).textTheme.subtitle1,)
                ],
              )
          ),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
            bottom: animate ? 20: -100,
              right: 80,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red
                ),
              )
          ),

        ],
      )








      // Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage(splash2),
      //       fit: BoxFit.contain,
      //     ),
      //   ),
      // ),
    );
  }

  Future startAnimated() async {
    await Future.delayed(Duration(milliseconds: 1800));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 3000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()));
  }

}