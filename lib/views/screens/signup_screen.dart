import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:my_test_app/controllers/user_controller.dart';
import 'package:my_test_app/views/screens/signin_screen.dart';
import 'package:my_test_app/views/screens/signup_screen.dart';
import 'package:my_test_app/views/screens/widgets/user.dart';

import 'widgets/pass_ff_widget.dart';
import 'widgets/text_ff_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
   final c = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to Sign up screen' , style: TextStyle(color: Colors.white),), ),
       body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              reverse: true,
              child: Form(
                key: c.formKey,
                child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.account_circle,
                      color: Colors.blue,
                      size: 90,
                    ),
                    TextFieldWidget(emailC: c.user , label: 'user name', iconData: Icons.person_2_outlined),
                    TextFieldWidget(
                      emailC: c.emailC,
                      iconData: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      label: 'Email Address',
                    ),
                    PassFieldWidget(controller: c.passC),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                        onPressed: () => c.signIn(),
                        child: const Text('Sign up')),
                    const SizedBox(
                      height: 50,
                    ),
                     RichText(
                        text: TextSpan(
                            text: 'Already have acount? ',
                            style: const TextStyle(color: Colors.black),
                            children: [
                          WidgetSpan(
                              child: InkWell(
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('Sign in'),
                            ),
                            onTap: () => Get.to(() => SignInScreen()),
                          ))
                        ])),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),);
  }
}