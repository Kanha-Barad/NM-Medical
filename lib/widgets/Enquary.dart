import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/customContainer.dart';

import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'thankyouscreen.dart';
import 'userdrawer.dart';

class EnQUiry extends StatefulWidget {
  const EnQUiry({super.key});

  @override
  State<EnQUiry> createState() => _EnQUiryState();
}

class _EnQUiryState extends State<EnQUiry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("", ""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomContainerBar(title: "ENQUIRY", svgAssetPath: "assets/cart/shopping-cart.svg"),
        
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
              // hintText: "Rohan",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                //fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
              ),
              labelText: 'First Name',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
              //  hintText: "Singh",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                //  fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
              ),
              labelText: 'Last Name',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
              //  hintText: "abc@gmail.com",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                // fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
              ),
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
              //  hintText: "12345617890",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                //  fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
              ),
              labelText: 'Mobile Number',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
              //  hintText: "17, Vadsarbala Nivas Mulund West",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                // fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
              ),
              labelText: 'Address',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 16),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ThankYou()));
            },
            child: Card(
              color: const Color.fromARGB(255, 237, 28, 36),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Color.fromARGB(255, 237, 28, 36))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15, top: 14,bottom: 10),
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
