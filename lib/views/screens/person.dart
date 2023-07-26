import 'package:flutter/material.dart';
import 'package:my_test_app/main.dart';
import 'package:my_test_app/models/user.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}
 
class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Person Screen')),
      body: Center( 
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(user!.email , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),  
          Text(user!.name,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold)),
          Text(user!.password ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
        ]),
      ),


    );
  }
}