import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:my_test_app/controllers/user_controller.dart';
import 'package:my_test_app/views/screens/signup_screen.dart';

import 'widgets/pass_ff_widget.dart';
import 'widgets/text_ff_widget.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final c = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    // c.formKey.currentState!.validate();
    return Scaffold(
      appBar: AppBar(title: Text('welcome to login screen' , style: TextStyle(color: Colors.white),), ),
      // resizeToAvoidBottomInset: false,
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
                        onPressed:
                         () => c.signIn(),
                        child: const Text('Sign In')),
                    const SizedBox(
                      height: 50,
                    ),
                    RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account? ',
                            style: const TextStyle(color: Colors.black),
                            children: [
                          WidgetSpan(
                              child: InkWell(
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text('Signup'),
                            ),
                            onTap: () => Get.to(() => const SignUpScreen()),
                          ))
                        ])),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
