import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.emailC,
    required this.label,
    required this.iconData,
    this.keyboardType,
    this.validator,
  });

  final TextEditingController emailC;
  final String label;
  final IconData iconData;
  final TextInputType? keyboardType;
  final Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: TextFormField(
        controller: emailC,
        
        keyboardType: keyboardType,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      //   validator: (value) {
      //     if (value!.isEmpty) return "This Field is required";
      //     if (!(value.isEmail)) return "Please provide correct email address";
      //     return null;
      //  },
       validator: (String?Value){
        if(Value!.isEmpty){
          return 'This field is required';
        }
        if (validator!= null){
          return validator!(Value);
          
        }
        return null;
       },
        decoration: InputDecoration(
          labelText: label,
          isDense: true,
          prefixIcon:  Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(),
          ),
        ),
      ),
    );
  }
}
