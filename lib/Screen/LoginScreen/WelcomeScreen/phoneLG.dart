import 'dart:ui';


import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../Reusable/ButtonReusable.dart';
import 'PhoneNumberOtp.dart';

class PhoneNumberLogin extends StatefulWidget {
  const PhoneNumberLogin({super.key});

  @override
  State<PhoneNumberLogin> createState() => _PhoneNumberLoginState();
}

class _PhoneNumberLoginState extends State<PhoneNumberLogin> {
  bool value = false;
  final _formKey = GlobalKey<FormState>();
  String phoneNumber = '';
  final TextEditingController _phonenumberController = TextEditingController();
  Future<void> Phonenumberotp() async {
    if (_formKey.currentState!.validate() && value) {
      const String url = 'https://agrosoftware.in/api/mobile/index.php';
      final responseotp = await http.post(Uri.parse(url), body: {
        'type': '3',
        'mobile': _phonenumberController.text, // Send the complete phone number
      });
      if (responseotp.statusCode == 200) {
        final responseData = json.decode(responseotp.body);

        if (responseData['error_msg'] == 'Valid Mobile No') {
          // OTP sent successfully
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Color.fromARGB(255, 10, 115, 48),
              content: Text(
                'OTP ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );

          // ignore: use_build_context_synchronously
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhoneNumberOtp(
                phoneNumber: phoneNumber,
              ),
            ),
          );
        } else {
          // Handle the error message sent by the server
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                responseData['error_mgs'],
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        }
      } else {
        // Handle server-side or connection errors
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'Failed to send OTP. Please try again.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
        print('Failed to send OTP: ${responseotp.statusCode}');
      }
    } else if (!value) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            'Please accept the Terms & Policy to continue.',
            style: TextStyle(color: Colors.white),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Image(
                            image: AssetImage('assets/Agrosoftimage.png')),
                      ),
                      const SizedBox(height: 10),
                      const Center(
                        child: Text(
                          'Welcome ',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Enter Your Phone number',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Form(
                          key: _formKey,
                          child: IntlPhoneField(
                            controller: _phonenumberController,
                            dropdownTextStyle: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'DMSans',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'DMSans',
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                            flagsButtonPadding: const EdgeInsets.all(16),
                            dropdownIconPosition: IconPosition.trailing,
                            decoration: const InputDecoration(
                              prefixIconColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 2),
                              ),
                            ),
                            initialCountryCode: 'IN',
                            showCountryFlag: false,
                            onChanged: (phone) {
                              phoneNumber = phone.completeNumber;
                            },
                            validator: (phone) {
                              if (phone == null ||
                                  phone.completeNumber.length < 10) {
                                return 'Phone number must be at least 10 digits';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SaveButton(
                        SaveButtontext: 'Continue',
                        onSaveButtton: Phonenumberotp,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              checkColor: Colors.white,
                              side: const BorderSide(color: Colors.white),
                              value: value,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  value = newValue!;
                                });
                              },
                            ),
                            Expanded(
                              child: RichText(
                                text: const TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            'By continuing you agree to our '),
                                    TextSpan(
                                      text: 'Terms ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    TextSpan(text: ' &  '),
                                    TextSpan(
                                      text: 'Policy',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
