import 'dart:ui';
import 'package:flutter/material.dart';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/Logintextfield.dart';
import 'Loginscreen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _newpasswordController = TextEditingController();
  final TextEditingController _conformpasswordController =
      TextEditingController();
  bool _obscureText = true;
  bool value = false;

  void _send() {
    if (_formKey.currentState?.validate() == true) {
      _newpasswordController.text = '';
      _conformpasswordController.text = '';
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Loginscreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please enter a valid Newpassword and Conformpassword',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgimage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(82, 255, 255, 255),
                border: Border.all(color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 5, sigmaX: 1),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Center(
                          child: Image(
                            image: AssetImage('assets/Agrosoftimage.png'),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Center(
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Logintextfield(
                          loghint: 'New Password',
                          controller: _newpasswordController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your new  password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: _conformpasswordController,
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              hintText: "Conform Password",
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please confirm your password';
                              } else if (value != _newpasswordController.text) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SaveButton(
                          SaveButtontext: 'Back to Login',
                          onSaveButtton: _send,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
