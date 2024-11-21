// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class OtpService {
//   final String _baseUrl =
//       'https://agrosoftware.in/api/mobile/index.php'; // Replace with your backend URL

//   Future<void> sendOtpToPhoneNumber(String phoneNumber) async {
//     final url = Uri.parse('$_baseUrl/send-otp');
//     final response = await http.post(url, body: {
//       'type': '3',
//       'phone_number': phoneNumber,
//     });

//     if (response.statusCode == 200) {
//       final responseData = json.decode(response.body);
//       print('OTP sent successfully: ${responseData['message']}');
//     } else {
//       print('Failed to send OTP: ${response.statusCode}');
//     }
//   }
// }

//  void _submit() {
//     if (_formKey.currentState!.validate() && value) {
//       _phonenumberController.text = '';
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => PhoneNumberOtp(
//                   phoneNumber: phoneNumber,
//                 )),
//       );
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text(
//             'Please enter a valid phone number and agree to the terms',
//           ),
//         ),
//       );
//     }
//   }