import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserFieldWidget extends StatelessWidget {
  const UserFieldWidget({
    super.key,
    required this.User,
    required this.label,
    required this.iconData,
    this.keyboardType,
  });

  final TextEditingController User;
  final String label;
  final IconData iconData;
  final TextInputType? keyboardType;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: TextFormField(
        controller: User,
        keyboardType: keyboardType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) return "This Field is required";
          return null;
        },
        decoration: InputDecoration(
          labelText: label,
          isDense: true,
          prefixIcon: const Icon(Icons.person_2_outlined),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(),
          ),
        ),
      ),
    );
  }
}
