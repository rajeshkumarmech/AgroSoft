import 'package:flutter/material.dart';
import 'Screen/CreateInvoiceScreen/AddProducts/Addproduct.dart';
import 'Screen/LoginScreen/WelcomeScreen/InitialScreen.dart';
import 'Screen/Transaction/Credit/CreditNote.dart';
import 'credit/creditnote.dart';
import 'home/pages/bottom_nav.dart';
import 'home/pages/cash&banking/cheque_issue/cheque_view.dart';
import 'home/pages/cash&banking/fund_transfer/fundtransfer_view.dart';
import 'home/pages/homepage.dart';
import 'home/pages/master/product/add_product.dart';
import 'home/pages/sales/Invoice/invoice_product_data.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      //Payment Paytype API
      //Login API
    );
  }
}
