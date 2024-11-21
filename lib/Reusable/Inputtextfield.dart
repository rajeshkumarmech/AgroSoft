// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class InputTextField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;

  InputTextField({
    super.key,
    required this.hint,
    required this.controller,
  });

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.name,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          hintText: widget.hint,
          hintStyle: const TextStyle(fontSize: 15, color: Colors.black87),
        ),
      ),
    );
  }
}

class BalanceAmountHide extends StatelessWidget {
  final String BalanceText;
  const BalanceAmountHide({super.key, required this.BalanceText});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12),
        padding: const EdgeInsets.all(6.0),
        height: 60,
        width: 350,
        decoration: BoxDecoration(
          color: const Color(0xffdad7cd),
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
          child: Text(BalanceText),
        ));
  }
}
