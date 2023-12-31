import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_test_app/views/screens/home_screen.dart';
import 'package:my_test_app/views/screens/signin_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/user.dart';
import 'views/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
  Sinup? user;


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            minimumSize: Size(MediaQuery.of(context).size.width / 2, 50),
            // textStyle: const TextStyle(color: Colors.white)),
          ),
        ),
      ),
     // home  : SplashScreen(),
      home: SignInScreen(),
      //home: HomeScreen(email: 'email'),
    );
  }
}