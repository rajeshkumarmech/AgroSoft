// import 'dart:async';
// import 'dart:ui';
// import 'package:agroapp/Reusable/ButtonReusable.dart';
// import 'package:agroapp/TopicButton.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class PhoneNumberOtp extends StatefulWidget {
//   final String phoneNumber;
//   const PhoneNumberOtp({super.key, required this.phoneNumber});

//   @override
//   State<PhoneNumberOtp> createState() => _PhoneNumberOtpState();
// }

// class _PhoneNumberOtpState extends State<PhoneNumberOtp> {
//   final TextEditingController _otpverifyController = TextEditingController();

//   bool value = false;
//   int start = 59;
//   bool canResendOtp = true;

//   Timer? _timer;

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }

//   void startTimer() {
//     setState(() {
//       start = 59;
//       canResendOtp = false;
//     });

//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       if (start == 0) {
//         setState(() {
//           canResendOtp = true;
//         });
//         timer.cancel();
//       } else {
//         setState(() {
//           start--;
//         });
//       }
//     });
//   }

//   void resendOtp() {
//     if (canResendOtp) {
//       startTimer(); // Start the timer to control the resend interval
//     }
//   }

//   final String _baseUrl = 'https://agrosoftware.in/api/mobile/index.php';

//   // OTP Verification Function
//   Future<void> verifyOtp(String phoneNumber, String otp) async {
//     final url = Uri.parse(_baseUrl);
//     final response = await http.post(url, body: {
//       'type': '4', // Type for verifying OTP
//       'phone_number': phoneNumber,
//       'otp': otp,
//     });

//     if (response.statusCode == 200) {
//       final responseData = json.decode(response.body);

//       if (responseData['error_mgs'] == null) {
//         // OTP verification successful
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             backgroundColor: const Color.fromARGB(255, 10, 115, 48),
//             content: Text(
//               'Login successfully',
//               style: const TextStyle(color: Colors.white),
//             ),
//           ),
//         );

//         // Navigate to the next screen
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => TopicButton(),
//           ),
//         );
//       } else {
//         // Handle the error message sent by the server
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             backgroundColor: Colors.red,
//             content: Text(
//               responseData['error_mgs'],
//               style: const TextStyle(color: Colors.white),
//             ),
//           ),
//         );
//       }
//     } else {
//       // Handle server-side or connection errors
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           backgroundColor: Colors.red,
//           content: Text(
//             'Failed to verify OTP. Please try again.',
//             style: const TextStyle(color: Colors.white),
//           ),
//         ),
//       );
//       print('Failed to verify OTP: ${response.statusCode}');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage('images/bgimage.jpg'), fit: BoxFit.cover)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Container(
//                 height: 500,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                     color: const Color.fromARGB(82, 255, 255, 255),
//                     border: Border.all(color: Colors.white),
//                     borderRadius: const BorderRadius.all(Radius.circular(20))),
//                 child: ClipRect(
//                   child: BackdropFilter(
//                     filter: ImageFilter.blur(sigmaY: 5, sigmaX: 1),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Center(
//                             child: Image(
//                                 image: AssetImage('images/Agrosoftimage.png'))),
//                         const SizedBox(
//                           height: 10,
//                         ),
//                         const SizedBox(
//                           height: 40,
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.only(left: 20),
//                           child: Text(
//                             'Enter your OTP  ',
//                             style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.black),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 20),
//                           child: Text(
//                             widget.phoneNumber,
//                             style: const TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.w400,
//                                 color: Colors.black),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Flexible(
//                           child: OtpTextField(
//                             numberOfFields: 6,
//                             borderColor: Colors.white,
//                             focusedBorderColor: Colors.white,
//                             borderWidth: 3,
//                             fieldWidth: 45,
//                             clearText: true,
//                             showFieldAsBox: true,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 15),
//                           child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 TextButton(
//                                     onPressed: () {
//                                       canResendOtp
//                                           ? 'Resend OTP'
//                                           : 'Resend in $start seconds';
//                                       resendOtp();
//                                     },
//                                     child: const Text(
//                                       'Resend OTP',
//                                       style: TextStyle(
//                                           color: Color.fromARGB(
//                                               255, 255, 255, 255),
//                                           fontSize: 18),
//                                     )),
//                                 Text('00:$start',
//                                     style: const TextStyle(fontSize: 18))
//                               ]),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         SaveButton(
//                             SaveButtontext: 'Verfy',
//                             onSaveButtton: () async {
//                               await verifyOtp;
//                             })
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../Reusable/ButtonReusable.dart';
import '../../../Reusable/OTPinputfield.dart';

class PhoneNumberOtp extends StatefulWidget {
  final String phoneNumber;
  const PhoneNumberOtp({super.key, required this.phoneNumber});

  @override
  State<PhoneNumberOtp> createState() => _PhoneNumberOtpState();
}

class _PhoneNumberOtpState extends State<PhoneNumberOtp> {
  final TextEditingController _otpverifyController = TextEditingController();

  bool value = false;
  int start = 59;
  bool canResendOtp = true;

  Timer? _timer;

  @override
  void dispose() {
    _otpverifyController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    setState(() {
      start = 59;
      canResendOtp = false;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (start == 0) {
        setState(() {
          canResendOtp = true;
        });
        timer.cancel();
      } else {
        setState(() {
          start--;
        });
      }
    });
  }

  void resendOtp() {
    if (canResendOtp) {
      startTimer(); // Start the timer to control the resend interval
    }
  }

  String otp = '';
  void handleOtpEntered(String enteredOtp) {
    setState(() {
      otp = enteredOtp;
    });
  }

  final String _baseUrl = 'https://agrosoftware.in/api/mobile/index.php';

  // OTP Verification Function
  Future<void> verifyOtp(String phoneNumber, String otp) async {
    final url = Uri.parse(_baseUrl);
    final response = await http.post(url, body: {
      'type': '2', // Type for verifying OTP
      'phone_number': phoneNumber,
      'otp': otp,
    });

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);

      if (responseData is Map<String, dynamic>) {
        // Check the correct condition based on the actual API response
        if (responseData['error_mgs'] == null) {
          // OTP verification successful
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Color.fromARGB(255, 10, 115, 48),
              content: Text(
                'Otp verified successfully',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );

          // Uncomment and navigate to the next screen if needed
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => TopicButton(), // Replace with your target screen
          //   ),
          // );
        } else {
          // Handle invalid OTP
          final errorMessage = responseData['error_mgs'] ?? 'Invalid OTP';
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                errorMessage,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        }
      } else {
        // Handle unexpected response structure
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text(
              'Unexpected response from the server.',
              style: TextStyle(color: Colors.white),
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
            'Failed to verify OTP. Please try again.',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
      print('Failed to verify OTP: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bgimage.jpg'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 500,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(82, 255, 255, 255),
                    border: Border.all(color: Colors.white),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 5, sigmaX: 1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                            child: Image(
                                image: AssetImage('images/Agrosoftimage.png'))),
                        const SizedBox(height: 50),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Enter your OTP',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            widget.phoneNumber,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Flexible(
                          child: OtpInputField(
                            length: 6,
                            onOtpEntered: handleOtpEntered,
                          ),
                          // child: OtpTextField(
                          //   controller: _otpverifyController,
                          //   numberOfFields: 6,
                          //   borderColor: Colors.white,
                          //   focusedBorderColor: Colors.white,
                          //   borderWidth: 3,
                          //   fieldWidth: 45,
                          //   clearText: true,
                          //   showFieldAsBox: true,
                          // ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    if (canResendOtp) {
                                      resendOtp();
                                    }
                                  },
                                  child: Text(
                                    canResendOtp
                                        ? 'Resend OTP'
                                        : 'Resend in $start seconds',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                                Text(
                                  '00:$start',
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ]),
                        ),
                        const SizedBox(height: 20),
                        SaveButton(
                          SaveButtontext: 'Verify',
                          onSaveButtton: () async {
                            String otp = _otpverifyController.text;
                            await verifyOtp(widget.phoneNumber, otp);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
