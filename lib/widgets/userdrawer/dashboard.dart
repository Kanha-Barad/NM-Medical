import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../bottom_navigation.dart';
import '../customContainer.dart';
import '../userdrawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final value = NumberFormat("#,##0", "en_US");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("",""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "DASHBOARD",
          svgAssetPath: "assets/images/dashboard-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
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
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Color.fromARGB(255, 227, 225, 225))),
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
                      // Padding(
                      //   padding: const EdgeInsets.only(top: 15.0),
                      //   child: Text(
                      //     '\u{20B9} ${value.format(2500)}',
                      //     style: TextStyle(
                      //         fontSize: 16,
                      //         fontWeight: FontWeight.w500,
                      //         color: Colors.black),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Card(
                            color: Color.fromARGB(255, 254, 148, 129),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
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
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Color.fromARGB(255, 227, 225, 225))),
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
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
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
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Color.fromARGB(255, 227, 225, 225))),
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
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Card(
                            color: Color.fromARGB(255, 119, 216, 144),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
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
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
