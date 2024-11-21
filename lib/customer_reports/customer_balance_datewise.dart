import 'package:flutter/material.dart';
class CustomerBalanceDatewisescreen extends StatefulWidget {
  const CustomerBalanceDatewisescreen({super.key});

  @override
  State<CustomerBalanceDatewisescreen> createState() => _CustomerBalanceDatewisescreenState();
}

class _CustomerBalanceDatewisescreenState extends State<CustomerBalanceDatewisescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("datewise"),
      ),
    );
  }
}