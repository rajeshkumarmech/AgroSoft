import 'package:flutter/material.dart';
class CustomerStatementscreen extends StatefulWidget {
  const CustomerStatementscreen({super.key});

  @override
  State<CustomerStatementscreen> createState() => _CustomerStatementscreenState();
}

class _CustomerStatementscreenState extends State<CustomerStatementscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("statement"),
      ),
    );
  }
}