import 'package:flutter/material.dart';

class Logintextfield extends StatefulWidget {
  final String loghint;
  final TextEditingController controller;

  final String? Function(String?)? validator; // Validator function
  final bool obscureText;
  const Logintextfield(
      {super.key,
      required this.loghint,
      required this.controller,
      required this.validator,
      this.obscureText = false});

  @override
  State<Logintextfield> createState() => _LogintextfieldState();
}

class _LogintextfieldState extends State<Logintextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: widget.loghint,
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2),
          ),
        ),
        validator: widget.validator,
      ),
    );
  }
}
