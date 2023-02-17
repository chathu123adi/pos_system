import 'package:flutter/material.dart';
import 'package:pos_system/utils/theme.dart';
import 'package:pos_system/view/Authentication/login.dart';
import 'package:pos_system/view/splash_screen.dart';

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