// import 'package:customer_reports/Customer_Balance.dart';
// import 'package:customer_reports/customer_agewise.dart';
// import 'package:customer_reports/customer_balance_datewise.dart';
// import 'package:customer_reports/customer_balance_detail.dart';
// import 'package:customer_reports/customer_statement.dart';
import 'package:flutter/material.dart';

import 'Customer_Balance.dart';
import 'customer_agewise.dart';
import 'customer_balance_datewise.dart';
import 'customer_balance_detail.dart';
import 'customer_statement.dart';
class CustomerReportPage extends StatelessWidget {
  const CustomerReportPage({super.key});

 @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 184, 222, 203),
        centerTitle: true,
        title: Text(
          "CUSTOMER REPORTS",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: width - 30,
                child: Container(
                  decoration: BoxDecoration(
                    color:Color(0xff4c956c), // Background color
                    borderRadius: BorderRadius.circular(12), // Optional: rounded corners
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomerBalancescreen()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.balance)
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "Customer Balance",
                            textAlign: TextAlign.center, // Center text within its space
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: width - 30,
                child: Container(
                  decoration: BoxDecoration(
                    color:Color(0xff4c956c), // Background color
                    borderRadius: BorderRadius.circular(12), // Optional: rounded corners
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomerBalanceDatewisescreen()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.date_range_rounded)
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "Customer Balance Datewise",
                            textAlign: TextAlign.center, // Center text within its space
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: width - 30,
                child: Container(
                  decoration: BoxDecoration(
                    color:Color(0xff4c956c), // Background color
                    borderRadius: BorderRadius.circular(12), // Optional: rounded corners
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomerBalanceDetailscreen()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.details)
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "Customer Balance Detail",
                            textAlign: TextAlign.center, // Center text within its space
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: width - 30,
                child: Container(
                  decoration: BoxDecoration(
                    color:Color(0xff4c956c), // Background color
                    borderRadius: BorderRadius.circular(12), // Optional: rounded corners
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomerStatementscreen()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.note_add)
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "Customer Statement",
                            textAlign: TextAlign.center, // Center text within its space
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               SizedBox(height: 20,),
              SizedBox(
                height: 60,
                width: width - 30,
                child: Container(
                  decoration: BoxDecoration(
                    color:Color(0xff4c956c), // Background color
                    borderRadius: BorderRadius.circular(12), // Optional: rounded corners
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustomerAgewisescreen()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.people)
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "Customer Agewise",
                            textAlign: TextAlign.center, // Center text within its space
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
}