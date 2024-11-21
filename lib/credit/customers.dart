import 'package:flutter/material.dart';
import 'add_customer.dart';
import 'creditnote.dart';

class Customers extends StatefulWidget {
  const Customers({super.key});

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CreditNote1()));
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: const Icon(Icons.arrow_back_outlined, size: 24, color: Color(0xff304755)),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            "Customers",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color(0xff263238)),
          ),
        ),
        actions:  [
          Padding(
            padding: EdgeInsets.only(right: 22),
            child: Row(
              children: [
                InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Customer_Add()));
                    },
                    child: ImageIcon(AssetImage("assets/agroicons/icons8_plus.png"), size: 24)),
                SizedBox(width: 15),
                ImageIcon(AssetImage("assets/agroicons/vdot.png"), size: 24),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 20, top: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: const Color(0xffffffff),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),

                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ImageIcon(AssetImage("assets/agroicons/search.png"), size: 24),
                        SizedBox(width: 8), // Adding some space between icons
                        Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: ImageIcon(AssetImage('assets/agroicons/dot.png'), size: 10),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Wrap ListView.builder inside an Expanded widget
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 22,right: 22,top: 3),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffffffff),
                    ),
                    child: ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Color(0xffAED9BA),
                        radius: 24,
                        child: Text("TL",
                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Color(0xff263238)),
                        ),
                      ),
                      title: Text("Team Company",
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xff263238)),
                      ),
                      subtitle: Text("1234567890",
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xff263238)),
                      ),
                      onTap: () {},
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

