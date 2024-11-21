import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/Logintextfield.dart';
import '../../../TopicButton.dart';
import '../../../home/pages/bottom_nav.dart';
import '../../../home/pages/homepage.dart';
import 'ForgotPassword.dart';
import 'RegisterPage.dart';
import 'phoneLG.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  bool value = false;

  void _submit() {
    if (_formKey.currentState?.validate() == true) {
      _userController.text = '';
      _passwordController.text = '';
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please enter a valid user ID and password',
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
              height: 600,
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
                    child: SingleChildScrollView(
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
                              'Welcome',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 50),
                          Logintextfield(
                            loghint: 'User name',
                            controller: _userController,
                            validator: (value) {
                              // if (value == null || value.isEmpty) {
                              //   return 'Please enter your username';
                              // }
                              // return null;
                            },
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextFormField(
                              controller: _passwordController,
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
                                hintText: "Password",
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
                                // if (value == null || value.isEmpty) {
                                //   return 'Please enter your password';
                                // }
                                // return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      checkColor: Colors.white,
                                      side:
                                          const BorderSide(color: Colors.white),
                                      value: value,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          value = newValue!;
                                        });
                                      },
                                    ),
                                    const Text(
                                      'Remember Me',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgotPasswordScreen()),
                                    );
                                  },
                                  child: const Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                            },
                            child: SaveButton(
                                SaveButtontext: 'Login', onSaveButtton: _submit),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have an account?"),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterScreen()),
                                  );
                                },
                                child: const Text(
                                  'Click here',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black87),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Login with others',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PhoneNumberLogin()),
                              );
                            },
                            child: const Text(
                              'Login with Phonenumber',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black87),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
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
      ),
    );
  }
}
