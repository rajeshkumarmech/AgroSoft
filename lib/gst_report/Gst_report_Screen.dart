import 'package:agrosoft/gst_report/purchase-billwise.dart';
import 'package:agrosoft/gst_report/purchase_report_HSN.dart';
import 'package:agrosoft/gst_report/purchase_report_datewise.dart';
import 'package:agrosoft/gst_report/purchase_report_taxwise.dart';
import 'package:agrosoft/gst_report/purschase_report.dart';
import 'package:agrosoft/gst_report/sales_tcs_report.dart';
import 'package:flutter/material.dart';

import 'GSTR_1.dart';
import 'GSTR_2.dart';
import 'GSTR_3.dart';
import 'GSTR_3B.dart';
import 'GstSalesReport_page.dart';
import 'HSN_wise.dart';
import 'Taxwise.dart';
import 'billwise.dart';
import 'categorywise.dart';
import 'datewise.dart';

class GstReportScreen extends StatefulWidget {
  const GstReportScreen({super.key});

  @override
  State<GstReportScreen> createState() => _GstReportScreenState();
}

class _GstReportScreenState extends State<GstReportScreen> {
  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 184, 222, 203),
        centerTitle: true,
        title: Text(
          "GST Report",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GstsalesreportPage()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          // child: Image.asset(
                          //   'assets/report.png', // Update with your image path
                          //   width: 24, // Adjust width as needed
                          //   height: 24, // Adjust height as needed
                          // ),
                          child: Icon(Icons.report),
                        ),
                        // SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "GST Sales Reports Itemwise",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>taxwisepage()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.report_outlined)
                        ),
                        // Center the text within the remaining space
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "GST Sales Reports Taxwise",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>billwisePage()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                         child: Icon(Icons.blinds_closed),

                        ),
                        // Center the text within the remaining space
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "GST Sales Reports Billwise",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>dateWisePage()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                           child: Icon(Icons.date_range)
                          
                        ),
                        // Center the text within the remaining space
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "GST Sales Reports Datewise",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HsnWisePage()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.note_alt_outlined)
                         
                        ),
                        // Center the text within the remaining space
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "GST Sales Reports HSN wise",
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

                  SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>salesTCsreportPage()));
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
                          child: Icon(Icons.note_add_outlined)
                         
                        ),
                        // Center the text within the remaining space
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "GST Sales TCS Report",
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CategorywisePage()));
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
                          child: Icon(Icons.book_sharp)
                         
                        ),
                         // Space between the image and text
                        // Center the text within the remaining space
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "GST Sales Reports Categorywise",
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
              



        SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PurschaseReportpage()));
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
                          child: Icon(Icons.add_box)
                         
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "GST Purchase Report Itemwise",
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



              SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>purchase_billwisepage()));
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
                          child: Icon(Icons.note_sharp)
                         
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "GST Purchase Report Billwise",
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
          
              SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PurchaseReportTaxwisepage()));
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
                          child: Icon(Icons.currency_rupee_sharp)
                         
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "GST Purchase Report Taxwise",
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


              SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PurchaseReportDatewisepage()));
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
                          child: Icon(Icons.data_exploration_rounded)
                         
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "GST Purchase Report Datewise",
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

               SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>purchase_report_HSN_page()));
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
                          child: Icon(Icons.note_alt_outlined)
                         
                        ),
                        // Center the text within the remaining space
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "GST Purchase Report HSN wise",
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

              SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GSTR_1page()));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white, // Text color
                      padding: EdgeInsets.zero, // Remove padding for container alignment
                    ),
                    child: Row(
                      children: [
                        // Add the image here
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Icon(Icons.currency_exchange)
                         
                        ),
                        // Center the text within the remaining space
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "GSTR-1",
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



              SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GSTR_2page()));
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
                          child: Icon(Icons.currency_exchange)
                         
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "GSTR-2",
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


              SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GSTR_3page()));
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
                          child: Icon(Icons.currency_exchange)
                         
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "GSTR-3B",
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


             

              


              SizedBox( height: 20, ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gstr3bPage()));
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
                          child: Icon(Icons.currency_exchange)
                         
                        ),
                        SizedBox(width: 10), // Space between the image and text
                        // Center the text within the remaining space
                        Expanded(
                          child: Text(
                            "GSTR-3B(Detail)",
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
      )
      
    )
    );
  }
}
