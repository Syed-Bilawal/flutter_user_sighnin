
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:my_test_app/views/screens/home_screen.dart';

class UserController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController user= TextEditingController();
  final formKey = GlobalKey<FormState>();
   String? str;
  void signIn() {
    
    if (formKey.currentState!.validate()) {
    if (str == null) {
    }
    print("Valid");
    Get.snackbar('Success', 'User Logged In Successfully');
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
