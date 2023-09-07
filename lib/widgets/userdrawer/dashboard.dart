import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/Enquary.dart';
import 'package:nmmedical/widgets/userdrawer/address.dart';
import 'package:nmmedical/widgets/userdrawer/profile.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../bottom_navigation.dart';
import '../customContainer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final value = NumberFormat("#,##0", "en_US");
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
          title: "DASHBOARD",
          svgAssetPath: "assets/images/dashboard-title.svg",
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 20),
          child: Text(
            'Profile',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 187, 42, 34)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
            child: Container(
                decoration: BoxDecoration(
                  boxShadow: [],
                  borderRadius:
                      BorderRadius.circular(10), // Set the corner radius here
                  border: Border.all(
                    color: Color.fromARGB(
                        255, 227, 226, 226), // Set the border color here
                    width: 1, // Set the border width here
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("First Name",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(
                                        255,
                                        85,
                                        85,
                                        85,
                                      ))),
                              Text("Rohan",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(
                                        255,
                                        85,
                                        85,
                                        85,
                                      ))),
                              Text("Email",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(
                                        255,
                                        85,
                                        85,
                                        85,
                                      ))),
                              Text("rohanshingh@gmail.com",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(
                                        255,
                                        85,
                                        85,
                                        85,
                                      ))),
                            ],
                          ),
                          // Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Last Name",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(
                                        255,
                                        85,
                                        85,
                                        85,
                                      ))),
                              Text("Shingh",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(
                                        255,
                                        85,
                                        85,
                                        85,
                                      ))),
                              Text("Mobile Number",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(
                                        255,
                                        85,
                                        85,
                                        85,
                                      ))),
                              Text("9876543210",
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 1.7,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(
                                        255,
                                        85,
                                        85,
                                        85,
                                      ))),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => pRofilE())));
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                              child: Card(
                                color: Color.fromARGB(255, 237, 28, 36),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(30, 8, 30, 8),
                                  child: Text(
                                    "EDIT",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 12),
          child: Text(
            'Address',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 187, 42, 34)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
          child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Set the corner radius here
                border: Border.all(
                  color: Color.fromARGB(
                      255, 227, 226, 226), // Set the border color here
                  width: 1, // Set the border width here
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    minLeadingWidth: 0,
                    leading:
                        SvgPicture.asset("assets/locations/location-icon.svg"),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Home',
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Text(
                        "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            height: 1.4,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 10),
          child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Set the corner radius here
                border: Border.all(
                  color: Color.fromARGB(
                      255, 227, 226, 226), // Set the border color here
                  width: 1, // Set the border width here
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    minLeadingWidth: 0,
                    leading:
                        SvgPicture.asset("assets/locations/location-icon.svg"),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Office',
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Text(
                        "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            height: 1.4,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 10),
          child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(10), // Set the corner radius here
                border: Border.all(
                  color: Color.fromARGB(
                      255, 227, 226, 226), // Set the border color here
                  width: 1, // Set the border width here
                ),
              ),
              child: Column(
                children: [
                  ListTile(
                    minLeadingWidth: 0,
                    leading:
                        SvgPicture.asset("assets/locations/location-icon.svg"),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        'Bandra',
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Text(
                        "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            height: 1.4,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              )),
        ),
        InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Address())),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
            child: Card(
              color: Color.fromARGB(255, 237, 28, 36),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                child: Text(
                  "VIEW MORE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 20),
          child: Text(
            'Enquiry History',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color.fromARGB(255, 187, 42, 34)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 4),
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [],
              borderRadius:
                  BorderRadius.circular(10), // Set the corner radius here
              border: Border.all(
                color: Color.fromARGB(
                    255, 227, 226, 226), // Set the border color here
                width: 1, // Set the border width here
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Blood Test',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 187, 42, 34)),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '25 Jan 2023',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            '#10353551',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Spacer(),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Card(
                            color: Color.fromARGB(255, 254, 148, 129),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 3, 12, 3),
                              child: Center(
                                  child: Text(
                                'Processing',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10), // Set the corner radius here
              border: Border.all(
                color: Color.fromARGB(
                    255, 227, 226, 226), // Set the border color here
                width: 1, // Set the border width here
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Triglycerides Test',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 187, 42, 34)),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '25 Jan 2023',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            '#10353551',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Spacer(),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Card(
                            color: Color.fromARGB(255, 119, 216, 144),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 3, 12, 3),
                              child: Center(
                                  child: Text(
                                'Completed',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10), // Set the corner radius here
              border: Border.all(
                color: Color.fromARGB(
                    255, 227, 226, 226), // Set the border color here
                width: 1, // Set the border width here
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Calcium Blood Test',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 187, 42, 34)),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            '25 Jan 2023',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            '#10353551',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                    ],
                  ),
                  Spacer(),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Card(
                            color: Color.fromARGB(255, 119, 216, 144),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 3, 12, 3),
                              child: Center(
                                  child: Text(
                                'Completed',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2, bottom: 14),
                        child: Card(
                            color: const Color.fromARGB(255, 192, 47, 36),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                                child: Row(
                                  children: [
                                    Center(
                                        child: Text(
                                      'Download',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )),
                                    SvgPicture.asset(
                                        "assets/images/download-icon2.svg"),
                                  ],
                                ))),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: ((context) => EnQUiry()))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
            child: Card(
              color: Color.fromARGB(255, 237, 28, 36),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                child: Text(
                  "VIEW MORE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
