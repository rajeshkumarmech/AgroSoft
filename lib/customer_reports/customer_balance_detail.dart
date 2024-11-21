import 'package:flutter/material.dart';

class CustomerBalanceDetailscreen extends StatefulWidget {
  const CustomerBalanceDetailscreen({super.key});

  @override
  State<CustomerBalanceDetailscreen> createState() => _CustomerBalanceDetailscreenState();
}

class _CustomerBalanceDetailscreenState extends State<CustomerBalanceDetailscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("detail",),
      ),
    );
  }
}