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

  // Function to handle user-profile icon tap
  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("","",onUserProfileIconTap: handleUserProfileIconTap,),
     endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "ADDRESS",
          svgAssetPath: "assets/locations/location-title.svg",
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 2),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Color.fromARGB(255, 224, 224, 226))),
              child: Column(
                children: [
                  ListTile(
                    leading:
                        SvgPicture.asset("assets/locations/location-icon.svg"),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        'Home',
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 6, 6, 4),
                      child: Text(
                        "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 8, 0, 8),
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
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 2),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Color.fromARGB(255, 224, 224, 226))),
              child: Column(
                children: [
                  ListTile(
                    leading:
                        SvgPicture.asset("assets/locations/location-icon.svg"),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        'Office',
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 6, 6, 4),
                      child: Text(
                        "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 8, 0, 8),
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
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 2),
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Color.fromARGB(255, 224, 224, 226))),
              child: Column(
                children: [
                  ListTile(
                    leading:
                        SvgPicture.asset("assets/locations/location-icon.svg"),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        'Bandra',
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 6, 6, 4),
                      child: Text(
                        "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 8, 0, 8),
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
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
