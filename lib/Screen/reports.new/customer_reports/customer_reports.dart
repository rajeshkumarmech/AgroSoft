import 'package:agrosoft/Reusable/ButtonReusable.dart';
import 'package:flutter/material.dart';

import '../../../customer_reports/customer_Report_page.dart';

class customer_report extends StatefulWidget {
  const customer_report({super.key});

  @override
  State<customer_report> createState() => _customer_reportState();
}

class _customer_reportState extends State<customer_report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffAED9BA),
        title: Text("REPORTS",style: TextStyle(color: Colors.black,

        ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomerReportPage()));
            },
            child: Mybutton(
                iconData: Icons.report_sharp,
                Buttontext: 'CUSTOMER REPORTS'),
          ),
          SizedBox(
            height: 10,
          ),
          Mybutton(
              iconData: Icons.report_sharp,
              Buttontext: 'SUPPLIER REPORTS'),
          SizedBox(height: 10,),

          Mybutton(
              iconData: Icons.report_sharp,
              Buttontext: "LEDGER REPORTS"),

          SizedBox(height: 10,),

          Mybutton(
              iconData: Icons.bug_report_sharp,
              Buttontext: "SALES REPORTS"),
          SizedBox(height: 10,),

          Mybutton(
              iconData: Icons.bug_report_sharp,
              Buttontext: "PURCHASE REPORTS"),
          SizedBox(height: 10,),

          Mybutton(
              iconData: Icons.bug_report_sharp,
              Buttontext: "TRANSACTION REPORTS"),
          SizedBox(height: 10,),

          Mybutton(
              iconData: Icons.bug_report_sharp,
              Buttontext: "STOCK REPORTS")



        ],
      ),
    );
  }
}
