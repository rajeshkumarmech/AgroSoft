import 'package:flutter/material.dart';
class CustomerAgewisescreen extends StatefulWidget {
  const CustomerAgewisescreen({super.key});

  @override
  State<CustomerAgewisescreen> createState() => _CustomerAgewisescreenState();
}

class _CustomerAgewisescreenState extends State<CustomerAgewisescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agewise"),
      ),
    );
  }
}