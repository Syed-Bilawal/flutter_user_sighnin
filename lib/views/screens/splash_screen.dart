

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
import '../../models/user.dart';
import 'home_screen.dart';
import 'signin_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    myInit();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  
  void myInit() async{
      
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.containsKey('user')){
    String userJson = prefs.getString('user')!;
    print('user-> $userJson');
    user = Sinup.fromJson(userJson); 
    Get.to(() => HomeScreen(email: 'asdasd'));
  }
  else{
    Get.to(() => SignInScreen());
  }


  }
}