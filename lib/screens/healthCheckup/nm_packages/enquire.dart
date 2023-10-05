import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/thankyouscreen.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/customContainer.dart';

class EnquirePackages extends StatefulWidget {
  const EnquirePackages({super.key});

  @override
  State<EnquirePackages> createState() => _EnquirePackagesState();
}

class _EnquirePackagesState extends State<EnquirePackages> {
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
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomContainerBarDelegate(
            title: "HOME VISIT",
            svgAssetPath: "assets/cart/shoppig-cart.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 12, 15, 0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    hintText: "Rohan",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "Verdana",
                      fontWeight: FontWeight.w400,
                    ),
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
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    hintText: "Singh",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "Verdana",
                      fontWeight: FontWeight.w400,
                    ),
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
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    hintText: "rohansingh@gmail.com",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "Verdana",
                      fontWeight: FontWeight.w400,
                    ),
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
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    hintText: "9372694233",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "Verdana",
                      fontWeight: FontWeight.w400,
                    ),
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
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    //alignLabelWithHint: true,
                    fillColor: Colors.grey,
                    hintText: "17, Vadsarbala Nivas Mulund West",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontFamily: "verdana",
                      fontWeight: FontWeight.w400,
                    ),
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
                padding: const EdgeInsets.only(top: 20, left: 15),
                child: SizedBox(
                  height: 42,
                  width: 165,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThankYou("", "", "")));
                    },
                    child: Card(
                      color: Color.fromARGB(255, 187, 42, 34),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      child: Center(
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
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
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('*',
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34),
                              fontSize: 22)),
                    ),
                    SizedBox(
                      width: 340,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                            "Per visit charge on sunday will be free (in case of a test that requires two visit will be charged free)."),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 8, 4, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('*',
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34),
                              fontSize: 22)),
                    ),
                    SizedBox(
                      width: 340,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                            "Sunday Visit Will Be Taken Subject To Avaibility Of Time Slots."),
                      ),
                    ),
                  ],
                ),
              )
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
