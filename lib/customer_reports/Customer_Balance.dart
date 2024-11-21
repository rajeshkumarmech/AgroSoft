import 'package:flutter/material.dart';

class CustomerBalancescreen extends StatefulWidget {
  const CustomerBalancescreen({super.key});

  @override
  State<CustomerBalancescreen> createState() => _CustomerBalancescreenState();
}

class _CustomerBalancescreenState extends State<CustomerBalancescreen> {
  bool? selectedorder;
  bool? balancetype;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 184, 222, 203),
        title: Text(
          "Customer Balance",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Order",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 170,
                  child: RadioListTile<bool>(
                    title: Text("Ascending"),
                    value: true,
                    groupValue: selectedorder,
                    onChanged: (bool? value) {
                      setState(() {
                        selectedorder = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 180,
                  child: RadioListTile<bool>(
                    title: Text("Descending"),
                    value: false,
                    groupValue: selectedorder,
                    onChanged: (bool? value) {
                      setState(() {
                        selectedorder = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 170,
                  child: RadioListTile<bool>
                  (
                    title: Text("With Balance"),
                    value: true, 
                    groupValue: balancetype, 
                    onChanged:(bool? value){
                      setState(() {
                        balancetype=value;
                      });
                    }
                    ),
                ),
                SizedBox(
                width: 170,
                child: RadioListTile<bool>(
                  value: false,
                   groupValue: balancetype, 
                   onChanged:(bool? value){
                    setState(() {
                      balancetype=value;
                    });
                   }
                   ),
                )
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
