import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/customContainer.dart';

import 'Enquary.dart';
import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'bottom_navigation.dart';

class searchwidget extends StatefulWidget {
  const searchwidget({Key? key}) : super(key: key);

  @override
  State<searchwidget> createState() => _searchwidgetState();
}

final value = new NumberFormat("#,##0", "en_US");

class _searchwidgetState extends State<searchwidget> {
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
            child: Column(children: [
          CustomContainerBar(
              title: "SEARCH",
              svgAssetPath: ("assets/search/search-title.svg")),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: TextFormField(
              // controller: userInput,
              // style: TextStyle(
              //   fontSize: 24,
              //   color: Colors.blue,
              //   fontWeight: FontWeight.w600,
              // ),
              // onChanged: (value) {
              //   setState(() {
              //     userInput.text = value.toString();
              //   });
              // },
              decoration: InputDecoration(
                focusColor: Colors.white,
                suffixIcon: SizedBox(
                  width: 20,
                  height: 20,
                  child: Icon(
                    Icons.search_outlined,
                    size: 28,
                    color: Color.fromARGB(255, 194, 41, 35),
                  ),
                  // SvgPicture.asset(
                  //   "assets/search/search-icon-select.svg",
                  // ),
                ),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 187, 42, 34), width: 1.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: '  Search here....',
                fillColor: Colors.grey,
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 222, 222, 222),
                  fontSize: 16,
                  //  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 4),
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Triglycerides Test',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 187, 42, 34)),
                        ),
                        // Text(
                        //   '\u{20B9} ${value.format(2500)}',
                        //   style: TextStyle(
                        //       fontSize: 15,
                        //       fontWeight: FontWeight.w600,
                        //       color: Colors.black),
                        // )
                        Spacer(),
                        InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => EnQUiry())));
                            }),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Card(
                                 elevation: 0.0,
                                color: Color.fromARGB(255, 251, 38, 45),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  child: Center(
                                    child: Text(
                                      'Enquiry Now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/search/home-visit-icon.svg"),
                          label: Text(
                            'Home Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/search/lab-visit-icon.svg"),
                          label: Text(
                            'Lab Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      SvgPicture.asset(
                        "assets/search/search-icon-select.svg",
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4, 8, 4),
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'CalCium Blood Test',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 187, 42, 34)),
                        ),
                        Spacer(),
                        InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => EnQUiry())));
                            }),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Card(
                                 elevation: 0.0,
                                color: Color.fromARGB(255, 251, 38, 45),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  child: Center(
                                    child: Text(
                                      'Enquiry Now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/search/lab-visit-icon.svg"),
                          label: Text(
                            'Lab Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4, 8, 4),
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Blood Sugar Test',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 187, 42, 34)),
                        ),
                        Spacer(),
                        InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => EnQUiry())));
                            }),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Card(
                                 elevation: 0.0,
                                color: Color.fromARGB(255, 251, 38, 45),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  child: Center(
                                    child: Text(
                                      'Enquiry Now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/search/home-visit-icon.svg"),
                          label: Text(
                            'Home Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/search/lab-visit-icon.svg"),
                          label: Text(
                            'Lab Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4, 8, 4),
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
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Blood Cholesterol Test',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 187, 42, 34)),
                        ),
                        Spacer(),
                        InkWell(
                            onTap: (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => EnQUiry())));
                            }),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Card(
                                 elevation: 0.0,
                                color: Color.fromARGB(255, 251, 38, 45),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 4, 8, 4),
                                  child: Center(
                                    child: Text(
                                      'Enquiry Now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/search/home-visit-icon.svg"),
                          label: Text(
                            'Home Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/search/lab-visit-icon.svg"),
                          label: Text(
                            'Lab Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ])),
        bottomNavigationBar: AllBottomNavigationBar(
          payMNETNAv: '',
        ));
  }
}
