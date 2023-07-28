import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/cart_widget.dart';
import 'package:nmmedical/widgets/userdrawer.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BasicAppbar("",""),
        drawer: userDrawer(),
        endDrawer: AppDrawer(),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 186, 43, 36),
              child: Row(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    )
                    //SvgPicture.asset("assets/search/search-title.svg")
                    ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("SEARCH",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
              ])),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
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
                suffixIcon:
                    // SizedBox(
                    //   height: 19,
                    //   width: 19,
                    //   child: SvgPicture.asset(
                    //     "assets/search/search-icon-select.svg",
                    //   ),
                    // ),
                    Icon(
                  Icons.search_outlined,
                  size: 28,
                  color: Color.fromARGB(255, 194, 41, 35),
                ),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 187, 42, 34), width: 1.5),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'Search here....',
                fillColor: Colors.grey,
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  //  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 4),
            child: Card(
              // elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey, width: 0.2)),
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
                                elevation: 3.0,
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
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4, 8, 4),
            child: Card(
              // elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey, width: 0.2)),
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
                                elevation: 3.0,
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
            child: Card(
              // elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey, width: 0.2)),
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
                                elevation: 3.0,
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
            child: Card(
              // elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey, width: 0.2)),
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
                                elevation: 3.0,
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
        bottomNavigationBar: AllBottomNavigationBar());
  }
}
