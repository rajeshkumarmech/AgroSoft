// // import 'package:agroapp/Screen/CreateInvoiceScreen/CreateInvoice/Reusable.dart';
// import 'package:flutter/material.dart';
//
// import 'Reusable.dart';
//
// // ignore: must_be_immutable
// class CreateInvoice extends StatelessWidget {
//   CreateInvoice({super.key});
//   TextEditingController namecontroller = TextEditingController();
//   TextEditingController phonecontroller = TextEditingController();
//   TextEditingController addresscontroller = TextEditingController();
//   TextEditingController aadharcontroller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xffAED9BA),
//         title: const Text(
//           'Sales Invoice',
//           style: TextStyle(fontSize: 24, color: Colors.black),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               const Row(
//                 children: [
//                   Text(
//                     'Customer Details',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w500,
//                       height: 50 / 30,
//                     ),
//                   )
//                 ],
//               ),
//               CustomTextFormField(
//                 hintText: 'Customer Name',
//                 controller: namecontroller,
//               ),
//               CustomTextFormField(
//                 hintText: 'Customer Phone',
//                 controller: phonecontroller,
//               ),
//               CustomTextFormField(
//                 hintText: 'Customer Address',
//                 controller: addresscontroller,
//               ),
//               CustomTextFormField(
//                 hintText: 'Customer Aadhaar',
//                 controller: aadharcontroller,
//               ),
//               const Row(
//                 children: [
//                   Text(
//                     'Type',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w500,
//                       height: 50 / 30,
//                     ),
//                   )
//                 ],
//               ),
//               const DropdownButtonWidget(
//                 items: [
//                   'Retail',
//                   'Wholesale B-B',
//                   'Bill of Supply',
//                   'Branch Supply',
//                   'CS Retail',
//                   'SS',
//                 ],
//                 selectedItem: 'Retail',
//               ),
//               const DropdownButtonWidget(
//                 items: ['CGST/SGST', 'IGST'],
//                 selectedItem: 'IGST',
//               ),
//               const DropdownButtonWidget(
//                 items: ['Include Tax', 'Exclude Tax'],
//                 selectedItem: 'Exclude Tax',
//               ),
//               const DropdownButtonWidget(
//                 items: ['TCS 0.075%', 'TCS 0.1%', 'NO TCS'],
//                 selectedItem: 'TCS 0.1%',
//               ),
//               const DropdownButtonWidget(
//                 items: ['CASH', 'CREDIT', 'Running/New'],
//                 selectedItem: 'CREDIT',
//               ),
//               const Row(
//                 children: [
//                   Text(
//                     'Date',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w500,
//                       height: 50 / 30,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
