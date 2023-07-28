import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/customContainer.dart';
import 'package:nmmedical/widgets/thankyouscreen.dart';
import 'package:nmmedical/widgets/userdrawer.dart';

import 'Enquary.dart';
import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'bottom_navigation.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

final value = NumberFormat("#,##0", "en_US");

class _CartWidgetState extends State<CartWidget> {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'ONE';
  // Group Value for Radio Button.
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("", ""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
            title: "CART", svgAssetPath: "assets/cart/shopping-cart.svg"),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: Text('Items in Cart',
              style: TextStyle(
                color: Color.fromARGB(255, 187, 42, 34),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
          child: const Text(
            'Blood Test',
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
        const Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
          child: const Text(
            'Triglycerides Test',
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
        const Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
          child: const Text(
            'Calcium Blood Test',
            style: TextStyle(
                color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
        const Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        // const Padding(
        //   padding: EdgeInsets.only(left: 15.0, top: 15),
        //   child: Text(
        //     'Home Visit Address',
        //     style: TextStyle(
        //         color: Color.fromARGB(255, 187, 42, 34),
        //         fontSize: 16,
        //         fontWeight: FontWeight.bold),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        //   child: TextFormField(
        //     keyboardType: TextInputType.name,
        //     decoration: InputDecoration(
        //       border: UnderlineInputBorder(
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //       focusedBorder: UnderlineInputBorder(
        //         borderSide: const BorderSide(color: Colors.black, width: 1.5),
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //       fillColor: Colors.grey,
        //       hintText: "Rohan",
        //       floatingLabelBehavior: FloatingLabelBehavior.always,
        //       hintStyle: const TextStyle(
        //         color: Colors.grey,
        //         fontSize: 12,
        //         fontFamily: "verdana_regular",
        //         fontWeight: FontWeight.w400,
        //       ),
        //       labelText: 'First Name',
        //       labelStyle: const TextStyle(
        //         color: Colors.black,
        //         fontSize: 18,
        //         fontWeight: FontWeight.w500,
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        //   child: TextFormField(
        //     keyboardType: TextInputType.name,
        //     decoration: InputDecoration(
        //       border: UnderlineInputBorder(
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //       focusedBorder: UnderlineInputBorder(
        //         borderSide: const BorderSide(color: Colors.black, width: 1.5),
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //       fillColor: Colors.grey,
        //       hintText: "Singh",
        //       floatingLabelBehavior: FloatingLabelBehavior.always,
        //       hintStyle: const TextStyle(
        //         color: Colors.grey,
        //         fontSize: 12,
        //         fontFamily: "verdana_regular",
        //         fontWeight: FontWeight.w400,
        //       ),
        //       labelText: 'Last Name',
        //       labelStyle: const TextStyle(
        //         color: Colors.black,
        //         fontSize: 18,
        //         fontWeight: FontWeight.w500,
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        //   child: TextFormField(
        //     keyboardType: TextInputType.name,
        //     decoration: InputDecoration(
        //       border: UnderlineInputBorder(
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //       focusedBorder: UnderlineInputBorder(
        //         borderSide: const BorderSide(color: Colors.black, width: 1.5),
        //         borderRadius: BorderRadius.circular(10.0),
        //       ),
        //       fillColor: Colors.grey,
        //       hintText: "17, Vadsarbala Nivas Mulund West",
        //       floatingLabelBehavior: FloatingLabelBehavior.always,
        //       hintStyle: const TextStyle(
        //         color: Colors.grey,
        //         fontSize: 12,
        //         fontFamily: "verdana_regular",
        //         fontWeight: FontWeight.w400,
        //       ),
        //       labelText: 'Address',
        //       labelStyle: const TextStyle(
        //         color: Colors.black,
        //         fontSize: 18,
        //         fontWeight: FontWeight.w500,
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        //   child: Card(
        //     color: const Color.fromARGB(240, 239, 237, 237),
        //     elevation: 2.0,
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(12),
        //         side: const BorderSide(color: Colors.black26)),
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding: const EdgeInsets.fromLTRB(12, 15, 12, 5),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               const Text("Test Subtotal",
        //                   style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w500,
        //                       color: Colors.black)),
        //               Text(
        //                 '\u{20B9} ${value.format(2500)}',
        //                 style: const TextStyle(
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.w500,
        //                     color: Colors.black),
        //               ),
        //             ],
        //           ),
        //         ),
        //         const Divider(
        //           thickness: 1.5,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               const Text("Home Visit Charges",
        //                   style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w500,
        //                       color: Colors.black)),
        //               Text(
        //                 '\u{20B9} ${value.format(00)}',
        //                 style: const TextStyle(
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.w500,
        //                     color: Colors.black),
        //               ),
        //             ],
        //           ),
        //         ),
        //         const Divider(
        //           thickness: 1.5,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.fromLTRB(12, 5, 12, 10),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               const Text("Coupon Discount",
        //                   style: TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w500,
        //                       color: Colors.black)),
        //               Text(
        //                 '\u{20B9} ${value.format(200)}',
        //                 style: const TextStyle(
        //                     fontSize: 14,
        //                     fontWeight: FontWeight.w500,
        //                     color: Colors.black),
        //               ),
        //             ],
        //           ),
        //         ),
        //         Card(
        //           color: const Color.fromARGB(255, 187, 42, 34),
        //           child: Padding(
        //             padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        //             child: Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 const Text("Total Payable",
        //                     style: TextStyle(
        //                         fontSize: 14,
        //                         fontWeight: FontWeight.w500,
        //                         color: Colors.white)),
        //                 Text(
        //                   '\u{20B9} ${value.format(5300)}',
        //                   style: const TextStyle(
        //                       fontSize: 14,
        //                       fontWeight: FontWeight.w500,
        //                       color: Colors.white),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // const Padding(
        //   padding: EdgeInsets.fromLTRB(15, 8, 15, 0),
        //   child: Text('Payment Method',
        //       style: TextStyle(
        //           color: Color.fromARGB(255, 187, 42, 34),
        //           fontSize: 16,
        //           fontWeight: FontWeight.bold)),
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: <Widget>[
        //     Radio(
        //       value: 1,
        //       groupValue: id,
        //       onChanged: (val) {
        //         setState(() {
        //           radioButtonItem = 'Cashondelivery';
        //           id = 1;
        //         });
        //       },
        //     ),
        //     const Text(
        //       'Cash on Delivery',
        //       style: TextStyle(
        //           fontSize: 14.0,
        //           fontWeight: FontWeight.w500,
        //           color: Colors.black),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.only(left: 15.0),
        //       child: Radio(
        //         value: 2,
        //         groupValue: id,
        //         onChanged: (val) {
        //           setState(() {
        //             radioButtonItem = 'card';
        //             id = 2;
        //           });
        //         },
        //       ),
        //     ),
        //     const Text(
        //       'Card',
        //       style: TextStyle(
        //           fontSize: 14.0,
        //           fontWeight: FontWeight.w500,
        //           color: Colors.black),
        //     ),
        //   ],
        // ),
        // const Divider(
        //   indent: 12,
        //   endIndent: 12,
        //   thickness: 2,
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 5),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EnQUiry()));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                  side: const BorderSide(color: Colors.white70)),
              color: const Color.fromARGB(255, 187, 42, 34),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15, top: 10),
          child: Text('NOTE *',
              style: TextStyle(
                  color: Color.fromARGB(255, 187, 42, 34),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.circle,
                  color: Color.fromARGB(255, 187, 42, 34),
                  size: 8,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Per visit charge on sunday will be free (in case of a test that requires two visit will be charged free).",
                    style: TextStyle(fontSize: 12),
                    softWrap: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(4, 8, 4, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.circle,
                  color: Color.fromARGB(255, 187, 42, 34),
                  size: 8,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Sunday Visit Will Be Taken Subject To Avaibility Of Time Slots.",
                    style: TextStyle(fontSize: 12),
                    softWrap: true,
                  ),
                ),
              ),
            ],
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
