
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:my_test_app/models/user.dart';
import 'package:my_test_app/views/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController user= TextEditingController();
  final formKey = GlobalKey<FormState>();
   String? str;
  void signIn() async{
    
    if (formKey.currentState!.validate()) {
    if (str == null) {
    }
    print("Valid");
    Get.snackbar('Success', 'User Logged In Successfully');
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Sinup user = Sinup('asdd', emailC.text, passC.text);
    await prefs.setString('user', user.toJson());
    Get.to(
        transition: Transition.fadeIn,
        duration: const Duration(seconds: 1),
        () => HomeScreen(
              email: emailC.text,
            ));
    } else {
    Get.snackbar('Failed', 'Something went wrong',
        backgroundColor: Colors.red);
    }
  }

  // navTo(page) {
  //   Navigator.push(
  //       context, MaterialPageRoute(builder: (_) => page));
  // }
}
