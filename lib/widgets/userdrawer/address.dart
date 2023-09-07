import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/userdrawer/editaddress.dart';
import '../bottom_navigation.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../customContainer.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
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
          title: "ADDRESS",
          svgAssetPath: "assets/locations/location-title.svg",
          onBackButtonPressed: () => Navigator.pop(context),
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 5, 0, 8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditAddress()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            color: Color.fromARGB(255, 227, 21, 31),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                              child: Center(
                                child: Text(
                                  'EDIT ADDRESS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 5, 0, 8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditAddress()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: Color.fromARGB(255, 227, 21, 31),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                              child: Center(
                                child: Text(
                                  'EDIT ADDRESS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 5, 0, 8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditAddress()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: Color.fromARGB(255, 227, 21, 31),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                              child: Center(
                                child: Text(
                                  'EDIT ADDRESS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}


// Padding(
//           padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
//           child: Container(
//               decoration: BoxDecoration(
//                 borderRadius:
//                     BorderRadius.circular(10), // Set the corner radius here
//                 border: Border.all(
//                   color: Color.fromARGB(
//                       255, 227, 226, 226), // Set the border color here
//                   width: 1, // Set the border width here
//                 ),
//               ),
//               child: Column(
//                 children: [
//                   ListTile(
//                     // leading:
//                     //     SvgPicture.asset("assets/locations/location-icon.svg"),
//                     title: Padding(
//                       padding: const EdgeInsets.only(top: 12.0),
//                       child: Row(
//                         children: [
//                           SvgPicture.asset(
//                               "assets/locations/location-icon.svg"),
//                           Padding(
//                             padding: const EdgeInsets.only(left:16.0),
//                             child: Text(
//                               'Home',
//                               style: TextStyle(
//                                   color: Color.fromARGB(255, 187, 42, 34),
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     subtitle: Padding(
//                       padding: const EdgeInsets.fromLTRB(34, 6, 6, 0),
//                       child: Text(
//                         "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
//                         style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 12,
//                             height: 1.5,
//                             fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => EditAddress()));
//                           },
//                           child: Card(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(25)),
//                             color: Color.fromARGB(255, 227, 21, 31),
//                             child: Padding(
//                               padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
//                               child: Center(
//                                 child: Text(
//                                   'EDIT ADDRESS',
//                                   style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 14,
//                                       fontWeight: FontWeight.w500),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               )),
//         ),