import 'package:flutter/material.dart';

class PassFieldWidget extends StatefulWidget {
  const PassFieldWidget({super.key, required this.controller});
  final TextEditingController controller;
  @override
  State<PassFieldWidget> createState() => _PassFieldWidgetState();
}

class _PassFieldWidgetState extends State<PassFieldWidget> {
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.visiblePassword,
        autovalidateMode: 
        AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty){ 
            return "This Field is required";}
          if (!(value.length > 7)) {
            return "Password length should be greater than 7 ";
          }
          return null;
        },
        obscureText: obsecure,
        decoration: InputDecoration(
          labelText: 'Password',
          isDense: true,
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: InkWell(
            child: Icon(obsecure ? Icons.visibility : Icons.visibility_off),
            onTap: () {
              setState(() {
                obsecure = !obsecure;
              });
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(),
          ),
        ),
      ),
    );
  }
}
