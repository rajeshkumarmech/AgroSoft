import 'package:agrosoft/credit/style.dart';
import 'package:flutter/material.dart';

import 'companydetails.dart';

class Company1 extends StatefulWidget {
  const Company1({super.key});

  @override
  State<Company1> createState() => _Company1State();
}

class _Company1State extends State<Company1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  const Icon(Icons.arrow_back_outlined,size: 23,color: Color(0xff304755),),
        title: const Text("Add Company Deatils",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Color(0xff263238)),
        ),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 36),
              child: Text("Company details",style: regular),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Image(image: AssetImage("assets/images/Addimage.jpg",),fit: BoxFit.fill,height: 77,width: 234,),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Row(
                children: [
                  const SizedBox(
                      height: 20,
                      width: 150,
                      child: Text("Do you have GST?")
                  ),
                  SizedBox(
                    height: 23,
                    width: 95.98,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const Company()));
                          },
                          child: const SizedBox(
                            height: 23,
                            width: 49.99,
                            child: Stack(
                                children:
                                [
                                  Positioned(
                                      left: 22,
                                      child: Text("Yes",
                                        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff000000)),)),
                                  Positioned(
                                      top: 4,
                                      child: ImageIcon(AssetImage("assets/agroicons/Ellipse 1159.png"),
                                        size: 17,color: Color(0xff278942),))
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                    width: 43.99,
                    child: Stack(
                        children:
                        [
                          Positioned(
                              left: 23,
                              child: Text("No",
                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff000000)),)),
                          Positioned(
                              top: 4,
                              child: ImageIcon(AssetImage("assets/agroicons/Ellipse 1159.png"),
                                size: 17,color: Color(0xff278942),)),
                          Positioned(
                              top: 8,
                              left: 4,
                              child: ImageIcon(AssetImage("assets/agroicons/Ellipse 1160.png"),
                                size: 8.5,color: Color(0xff278942),))
                        ]
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Business/Company Name",style: regular,),
                    TextSpan(
                        text: "*",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xffff0000))
                    )
                  ]
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 22,right: 22),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: const Color(0xffffffff),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Choose your state",style: regular,),
                    TextSpan(
                        text: "*",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xffff0000))
                    )
                  ]
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 22,right: 22),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: const Color(0xffffffff),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    )
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Text("Billing address(optional)",style: regular,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 22,right: 22),
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: const Color(0xffffffff),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36,top: 8),
              child: Text("Business information(optional)",style: regular,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,right: 22,left: 22),
              child: Container(
                height: 180,
                width: double.infinity,
                color: const Color(0xffffffff),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Business E-mail"),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "comapny@gmail.com",
                          labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: const Color(0xff263238).withOpacity(0.4),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xff98A6AD,),width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Business Mobile Number"),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "mobile number",
                          labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: const Color(0xff263238).withOpacity(0.4),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xff98A6AD,),width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
