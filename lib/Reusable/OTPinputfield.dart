import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpInputField extends StatefulWidget {
  final int length;
  final Function(String) onOtpEntered;

  const OtpInputField({
    Key? key,
    required this.length,
    required this.onOtpEntered,
  }) : super(key: key);

  @override
  _OtpInputFieldState createState() => _OtpInputFieldState();
}

class _OtpInputFieldState extends State<OtpInputField> {
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _controllers =
        List.generate(widget.length, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _updateOtp() {
    String otp = _controllers.map((controller) => controller.text).join();
    widget.onOtpEntered(otp);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(widget.length, (index) {
        return SizedBox(
          width: 45,
          child: TextFormField(
            controller: _controllers[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            maxLength: 1,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: InputDecoration(
              counterText: '', // Hides the counter below each text field
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.blue, width: 2),
              ),
            ),
            onChanged: (value) {
              if (value.length == 1 && index != widget.length - 1) {
                FocusScope.of(context).nextFocus();
              }
              _updateOtp();
            },
          ),
        );
      }),
    );
  }
}
