import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../customContainer.dart';
import '../thankyouscreen.dart';

class PRomoTioNCouPON extends StatefulWidget {
  const PRomoTioNCouPON({super.key});

  @override
  State<PRomoTioNCouPON> createState() => _PRomoTioNCouPONState();
}

class _PRomoTioNCouPONState extends State<PRomoTioNCouPON> {
  bool isUserProfileIconClicked = false;

  bool isMenuClicked = false;

  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
      isMenuClicked = false; // Reset menu icon click state
    });
  }

// Function to handle menu icon tap
  void handleMenuIconTap() {
    setState(() {
      isMenuClicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        "",
        "",
        onUserProfileIconTap: handleUserProfileIconTap,
        onMenuIconTap: handleMenuIconTap,
      ),
      endDrawer: AppDrawer(
        isUserIconClicked: isUserProfileIconClicked,
        isMenuIconClicked: isMenuClicked,
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "PROMOTION",
          svgAssetPath: "assets/promotion/promotion-icon.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
// hintText: "Rohan",
              floatingLabelBehavior: FloatingLabelBehavior.always,
// hintStyle: TextStyle(
// color: Colors.grey,
// fontSize: 12,
// fontFamily: "verdana_regular",
// fontWeight: FontWeight.w400,
// ),
              labelText: 'First Name',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
// hintText: "Singh",
              floatingLabelBehavior: FloatingLabelBehavior.always,
// hintStyle: TextStyle(
// color: Colors.grey,
// fontSize: 12,
// fontFamily: "verdana_regular",
// fontWeight: FontWeight.w400,
// ),
              labelText: 'Last Name',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
//hintText: "abc@gmail.com",
              floatingLabelBehavior: FloatingLabelBehavior.always,
// hintStyle: TextStyle(
// color: Colors.grey,
// fontSize: 12,
// fontFamily: "verdana_regular",
// fontWeight: FontWeight.w400,
// ),
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
// hintText: "12345617890",
              floatingLabelBehavior: FloatingLabelBehavior.always,
// hintStyle: TextStyle(
// color: Colors.grey,
// fontSize: 12,
// fontFamily: "verdana_regular",
// fontWeight: FontWeight.w400,
// ),
              labelText: 'Mobile Number',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
// hintText: "17, Vadsarbala Nivas Mulund West",
              floatingLabelBehavior: FloatingLabelBehavior.always,
// hintStyle: TextStyle(
// color: Colors.grey,
// fontSize: 12,
// fontFamily: "verdana_regular",
// fontWeight: FontWeight.w400,
// ),
              labelText: 'Address',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 24),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  ThankYou("","", "")));
            },
            child: Card(
              color: const Color.fromARGB(255, 237, 28, 36),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
              ),
            ),
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
