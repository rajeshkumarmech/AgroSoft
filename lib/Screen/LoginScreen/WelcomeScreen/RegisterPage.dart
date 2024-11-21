import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/Logintextfield.dart';
import 'Loginscreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _regnameController = TextEditingController();
  final TextEditingController _regemailController = TextEditingController();
  final TextEditingController _regpasswordController = TextEditingController();
  final TextEditingController _regmobileController = TextEditingController();

  bool value = false;
  final String _emailPattern = r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
  Future<void> registerUser() async {
    const String url = 'https://agrosoftware.in/api/mobile/index.php';

    final response = await http.post(
      Uri.parse(url),
      body: {
        'type': '21',
        'name': _regnameController.text,
        'mobile': _regmobileController.text,
        'email': _regemailController.text,
        // '': _regpasswordController.text,
      },
    );

    if (response.statusCode == 200) {
      final dataresponse = response.body;
      try {
        if (dataresponse.isEmpty) {
          throw const FormatException("Response body is empty");
        }

        final jsonresponseBody = json.decode(dataresponse);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Color.fromARGB(255, 10, 115, 48),
            content: Text(
              jsonresponseBody['error_mgs'],
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );

        // Simulate a registration process

        // After registration, navigate to the login screen
        // After successful registration, navigate to the login screen

        print('Response: ${response.body}');
      } catch (e) {
        if (e is FormatException) {
          print("FormatException: ${e.message}");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                'Error: ${e.message}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        } else {
          _regemailController.clear();
          _regnameController.clear();
          _regpasswordController.clear();

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Loginscreen()),
          );

          print('Failed to register user: ${response.statusCode}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: const Color.fromARGB(255, 51, 155, 31),
              content: Text(
                'Register Completed: ${response.statusCode}',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        }
      }
    }
  }

  void _send() {
    if (_formKey.currentState?.validate() == true) {
      registerUser();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Color(0xff697060),
          content: Text(
            'Please enter a valid Name ,Email & Password',
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
                            'Welcome to Register ',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: Logintextfield(
                            loghint: 'Name',
                            controller: _regnameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 15),
                        Expanded(
                          child: Logintextfield(
                            loghint: 'E-mail',
                            controller: _regemailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your  Email';
                              } else if (!RegExp(_emailPattern)
                                  .hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Logintextfield(
                            loghint: 'Password',
                            controller: _regpasswordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your   password';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: Logintextfield(
                            loghint: 'Mobile',
                            controller: _regmobileController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your  mobile number';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SaveButton(
                          SaveButtontext: 'Register',
                          onSaveButtton: _send,
                        ),
                        const SizedBox(
                          height: 10,
                        )
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
