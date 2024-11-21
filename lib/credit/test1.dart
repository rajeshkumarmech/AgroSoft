import 'package:flutter/material.dart';

import '../Screen/Transaction/Credit/CreditNote.dart';


class OptionsPage extends StatefulWidget {
  @override
  _OptionsPageState createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  bool showAdditionalOptions = false;
  bool showDataAndButton = false;
  String displayData = '';

  void handleOneButtonClick() {
    setState(() {
      showAdditionalOptions = true;
      showDataAndButton = false;
      displayData = '';
    });
  }

  void handleTwoButtonClick() {
    setState(() {
      showAdditionalOptions = false;
      showDataAndButton = true;
      displayData = 'Employee ID: 12345\nAddress: 123 Main St, Anytown, USA';
    });
  }

  // void handleAdditionalButtonClick(String button) {
  //   setState(() {
  //     if (button == 'Button1') {
  //       displayData = 'Name: John Doe\nEmail: john.doe@example.com\nPhone: +1234567890';
  //     } else if (button == 'Button2') {
  //       displayData = 'Additional Info: Button 2 Clicked';
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Options Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: handleOneButtonClick,
              child: Text('One'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: handleTwoButtonClick,
              child: Text('Two'),
            ),
            if (showAdditionalOptions) ...[
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter some data',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){},
                child: Text('Button 1'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> CreditNote()));
                },
                child: Text('Button 2'),
              ),
            ],
            if (showDataAndButton) ...[
              SizedBox(height: 20),
              Text(
                displayData,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your button click functionality here
                },
                child: Text('Simple Button'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
