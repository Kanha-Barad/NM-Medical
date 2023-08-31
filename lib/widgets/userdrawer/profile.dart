import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/userdrawer/profilesavechangepin.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../customContainer.dart';

class pRofilE extends StatefulWidget {
  const pRofilE({Key? key}) : super(key: key);

  @override
  State<pRofilE> createState() => _pRofilEState();
}

class _pRofilEState extends State<pRofilE> {
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
          title: "PROFILE",
          svgAssetPath: "assets/profile-icons/user-profile-title.svg",
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 0, 10),
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
              hintText: "  Rohan",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                // fontFamily: "Verdana",
                fontWeight: FontWeight.w400,
              ),
              labelText: '  First Name',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
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
              hintText: "  Singh",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                // fontFamily: "Verdana",
                fontWeight: FontWeight.w400,
              ),
              labelText: '  Last Name',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
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
              hintText: "  rohansingh@gmail.com",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                //  fontFamily: "Verdana",
                fontWeight: FontWeight.w400,
              ),
              labelText: '  Email',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: TextFormField(
            keyboardType: TextInputType.number,
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
              hintText: "  9372694233",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                // fontFamily: "Verdana",
                fontWeight: FontWeight.w400,
              ),
              labelText: '  Mobile Number',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: TextFormField(
            keyboardType: TextInputType.visiblePassword,
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
              hintText: "  ******",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                // fontFamily: "Verdana",
                fontWeight: FontWeight.w400,
              ),
              labelText: '  Password',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: TextFormField(
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              //alignLabelWithHint: true,
              fillColor: Colors.grey,
              hintText: "  17, Vadsarbala Nivas Mulund West",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                //fontFamily: "verdana",
                fontWeight: FontWeight.w400,
              ),
              labelText: '  Address',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => savechangepin()));
            },
            child: Card(
              color: Color.fromARGB(255, 237, 28, 36),
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                child: Text(
                  'SAVE CHANGES',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
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
