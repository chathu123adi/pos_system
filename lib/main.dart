import 'package:flutter/material.dart';
import 'package:pos_system/utils/theme.dart';
import 'package:pos_system/view/Authentication/login.dart';
import 'package:pos_system/view/splashscreen/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),

      // routes: {
      //   "/": (context) => SplashScreen(),
      //   "/home": (context) => Login()
      // },
    );
  }
}





// Obx(() => AnimatedPositioned(
// duration: const Duration(milliseconds: 1600),
// bottom: (height/2) - 120 ,
// left: splashScreenController.animate.value ? (width/2 -175) : -500,
// child: Image(image: AssetImage(splash),)
// )),
//
// Obx(() => AnimatedPositioned(
// duration: const Duration(milliseconds: 1600),
// bottom: (height/2) - 275,
// right: splashScreenController.animate.value ? (width/2 -150): -500,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Shopping", style: Theme.of(context).textTheme.headline2,),
// Text("Pay", style: Theme.of(context).textTheme.subtitle1,)
// ],
// )
// ),),
//
// Obx(() => AnimatedPositioned(
// duration: const Duration(milliseconds: 1600),
// bottom: splashScreenController.animate.value ? 20: -100,
// right: 80,
// child: Container(
// width: 100,
// height: 100,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(100),
// color: Colors.red
// ),
// )
// ))