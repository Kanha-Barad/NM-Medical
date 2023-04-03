import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/userdrawer.dart';

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
        appBar: BasicAppbar(context),
        drawer: userDrawer(),
        endDrawer: AppDrawer(),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 187, 42, 34),
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: SizedBox(
                      height: 25,
                      width: 25,
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("SEARCH",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
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
                suffixIcon: Icon(
                  Icons.search_outlined,
                  color: Color.fromARGB(255, 187, 42, 34),
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
                  fontFamily: "verdana_regular",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 4),
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 187, 42, 34)),
                        ),
                        Text(
                          '\u{20B9} ${value.format(2500)}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/home/homevisit.png"),
                                    fit: BoxFit.fill)),
                          ),
                          label: Text(
                            'Home Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/home/corporate.png"),
                                    fit: BoxFit.fill)),
                          ),
                          label: Text(
                            'Lab Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                      Spacer(),
                      SizedBox(
                          height: 40,
                          width: 100,
                          child: Card(
                            elevation: 3.0,
                            color: Color.fromARGB(255, 187, 42, 34),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                            child: Center(
                              child: Text(
                                'BOOK NOW',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4, 8, 4),
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 187, 42, 34)),
                        ),
                        Text(
                          '\u{20B9} ${value.format(2500)}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      // TextButton.icon(
                      //     onPressed: () {},
                      //     icon: Container(
                      //       height: 18,
                      //       width: 18,
                      //       decoration: BoxDecoration(
                      //           shape: BoxShape.rectangle,
                      //           image: DecorationImage(
                      //               image:
                      //                   AssetImage("assets/home/homevisit.png"),
                      //               fit: BoxFit.fill)),
                      //     ),
                      //     label: Text(
                      //       'Home Visit',
                      //       style: TextStyle(
                      //           fontSize: 12,
                      //           fontWeight: FontWeight.normal,
                      //           color: Colors.black),
                      //     )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/home/corporate.png"),
                                    fit: BoxFit.fill)),
                          ),
                          label: Text(
                            'Lab Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                      Spacer(),
                      SizedBox(
                          height: 40,
                          width: 100,
                          child: Card(
                            elevation: 3.0,
                            color: Color.fromARGB(255, 187, 42, 34),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                            child: Center(
                              child: Text(
                                'BOOK NOW',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4, 8, 4),
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 187, 42, 34)),
                        ),
                        Text(
                          '\u{20B9} ${value.format(5500)}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/home/homevisit.png"),
                                    fit: BoxFit.fill)),
                          ),
                          label: Text(
                            'Home Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/home/corporate.png"),
                                    fit: BoxFit.fill)),
                          ),
                          label: Text(
                            'Lab Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                      Spacer(),
                      SizedBox(
                          height: 40,
                          width: 100,
                          child: Card(
                            elevation: 3.0,
                            color: Color.fromARGB(255, 187, 42, 34),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                            child: Center(
                              child: Text(
                                'BOOK NOW',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4, 8, 4),
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
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
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 187, 42, 34)),
                        ),
                        Text(
                          '\u{20B9} ${value.format(3500)}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/home/homevisit.png"),
                                    fit: BoxFit.fill)),
                          ),
                          label: Text(
                            'Home Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Container(
                            height: 18,
                            width: 18,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/home/corporate.png"),
                                    fit: BoxFit.fill)),
                          ),
                          label: Text(
                            'Lab Visit',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          )),
                      Spacer(),
                      SizedBox(
                          height: 40,
                          width: 100,
                          child: Card(
                            elevation: 3.0,
                            color: Color.fromARGB(255, 187, 42, 34),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35)),
                            child: Center(
                              child: Text(
                                'BOOK NOW',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ))
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
