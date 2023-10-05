import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/controllers/Test_Enquiry_Controller.dart';
import 'package:nmmedical/models/Test_Enquiry_Model.dart';
import 'package:nmmedical/widgets/customContainer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../bottom_navigation.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  final value = NumberFormat("#,##0", "en_US");
  bool isUserProfileIconClicked = false;
  bool isMenuClicked = false;
  late Future<List<TestEnquiry>> testEnquiryFuture;

  @override
  void initState() {
    super.initState();
    testEnquiryFuture = TestEnquiryController.fetchTestEnquiry();
  }

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
      body: Column(children: [
        CustomContainerBar(
          title: "MY ENQUIRY",
          svgAssetPath: "assets/images/my-orders-title.svg",
          onBackButtonPressed: () => Navigator.pop(context, true),
        ),
        Expanded(
            child: FutureBuilder<List<TestEnquiry>>(
                future: testEnquiryFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 186, 43, 35),
                    ));
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Center(
                      child: const Text('No Reports Avilable',
                          style: TextStyle(fontSize: 12)),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                            child: Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  side: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 227, 225, 225))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 10, 10, 2),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            snapshot.data![index].SERVICE_NAME,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromARGB(
                                                    255, 187, 42, 34)),
                                          ),
                                        ),
                                        snapshot.data![index].SERVICE_STATUS1 ==
                                                    "Dispatch" ||
                                                snapshot.data![index]
                                                        .SERVICE_STATUS1 ==
                                                    "Completed"
                                            ? Card(
                                                color: const Color.fromARGB(
                                                    255, 119, 216, 144),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: const Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      12, 3, 12, 3),
                                                  child: Center(
                                                      child: Text(
                                                    'Completed',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  )),
                                                ))
                                            : Container()
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 0, 8, 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 6.0),
                                              child: Text(
                                                'Order Id',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Text(
                                              snapshot.data![index].BILL_NO,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 6.0),
                                              child: Text(
                                                'Date',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.black),
                                              ),
                                            ),
                                            Text(
                                              snapshot.data![index].BILL_DT,
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Row(
                                                children: [
                                                  snapshot.data![index]
                                                                  .SERVICE_STATUS1 ==
                                                              "Dispatch" ||
                                                          snapshot.data![index]
                                                                  .SERVICE_STATUS1 ==
                                                              "Completed"
                                                      ? GestureDetector(
                                                          onTap: () async {
                                                            final downloadUrl =
                                                                'http://115.112.254.129/NM_TESTING/Qrcodereport.aspx?Bill_id=${snapshot.data![index].Bill_ID}';

                                                            try {
                                                              await launch(
                                                                  downloadUrl);
                                                            } catch (e) {
                                                              print(
                                                                  'Error launching URL: $e');
                                                              ScaffoldMessenger
                                                                      .of(
                                                                          context)
                                                                  .showSnackBar(
                                                                      SnackBar(
                                                                          content:
                                                                              Text("Could not lunch URL")));
                                                            }
                                                          },
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 2,
                                                                    bottom: 0),
                                                            child: Card(
                                                                color: Color.fromARGB(255, 221, 105, 63),
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5)),
                                                                child: Padding(
                                                                    padding: EdgeInsets
                                                                        .fromLTRB(
                                                                            16,
                                                                            2,
                                                                            14,
                                                                            2),
                                                                    child: Row(
                                                                      children: [
                                                                        Center(
                                                                            child:
                                                                                Text(
                                                                          'Invoice',
                                                                          style: TextStyle(
                                                                              fontSize: 12,
                                                                              color: Colors.white,
                                                                              fontWeight: FontWeight.w500),
                                                                        )),
                                                                        SvgPicture.asset(
                                                                            "assets/images/download-icon2.svg"),
                                                                      ],
                                                                    ))),
                                                          ),
                                                        )
                                                      : Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 8,
                                                                  bottom: 30),
                                                          child: Card(
                                                              color: const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  254,
                                                                  148,
                                                                  129),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5)),
                                                              child:
                                                                  const Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .fromLTRB(
                                                                            8,
                                                                            2,
                                                                            8,
                                                                            2),
                                                                child: Center(
                                                                    child: Text(
                                                                  'Processing',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500),
                                                                )),
                                                              )),
                                                        ),
                                                ],
                                              ),
                                            ),
                                            snapshot.data![index]
                                                            .SERVICE_STATUS1 ==
                                                        "Dispatch" ||
                                                    snapshot.data![index]
                                                            .SERVICE_STATUS1 ==
                                                        "Completed"
                                                ? GestureDetector(
                                                    onTap: () async {
                                                      final downloadUrl =
                                                          'http://115.112.254.129/NM_TESTING/public/HIMSReportViewer.aspx?uniuq_id=${snapshot.data![index].REPORT_CD}';

                                                      try {
                                                        await launch(
                                                            downloadUrl);
                                                      } catch (e) {
                                                        print(
                                                            'Error launching URL: $e');
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(SnackBar(
                                                                content: Text(
                                                                    "Could not lunch URL")));
                                                      }
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2,
                                                              bottom: 14),
                                                      child: Card(
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 192, 47, 36),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                          child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          8,
                                                                          2,
                                                                          8,
                                                                          2),
                                                              child: Row(
                                                                children: [
                                                                  Center(
                                                                      child:
                                                                          Text(
                                                                    'Download',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .white,
                                                                        fontWeight:
                                                                            FontWeight.w500),
                                                                  )),
                                                                  SvgPicture.asset(
                                                                      "assets/images/download-icon2.svg"),
                                                                ],
                                                              ))),
                                                    ),
                                                  )
                                                : Container(),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  }
                }))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}

 // Padding(
        //   padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
        //   child: Card(
        //     elevation: 0,
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(14),
        //         side: const BorderSide(
        //             color: Color.fromARGB(255, 227, 225, 225))),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         const Padding(
        //           padding: EdgeInsets.only(top: 15.0, left: 8),
        //           child: Text(
        //             'Blood Test',
        //             style: TextStyle(
        //                 fontSize: 14,
        //                 fontWeight: FontWeight.w700,
        //                 color: Color.fromARGB(255, 187, 42, 34)),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.only(bottom: 6.0),
        //                     child: Text(
        //                       'Order Id',
        //                       style: TextStyle(
        //                           fontSize: 13,
        //                           fontWeight: FontWeight.w600,
        //                           color: Colors.black),
        //                     ),
        //                   ),
        //                   Text(
        //                     '#10353551',
        //                     style: TextStyle(
        //                         fontSize: 12,
        //                         fontWeight: FontWeight.w500,
        //                         color: Colors.black),
        //                   ),
        //                 ],
        //               ),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.only(bottom: 6.0),
        //                     child: Text(
        //                       'Date',
        //                       style: TextStyle(
        //                           fontSize: 13,
        //                           fontWeight: FontWeight.w600,
        //                           color: Colors.black),
        //                     ),
        //                   ),
        //                   Text(
        //                     '25 Jan, 2023',
        //                     style: TextStyle(
        //                         fontSize: 12,
        //                         fontWeight: FontWeight.w500,
        //                         color: Colors.black),
        //                   ),
        //                 ],
        //               ),
        //               // Text(
        //               //   'Amount',
        //               //   style: TextStyle(
        //               //       fontSize: 13,
        //               //       fontWeight: FontWeight.w600,
        //               //       color: Colors.black),
        //               // )
        //               Padding(
        //                 padding: const EdgeInsets.only(left: 8, bottom: 14),
        //                 child: Card(
        //                     color: const Color.fromARGB(255, 254, 148, 129),
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(5)),
        //                     child: const Padding(
        //                       padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
        //                       child: Center(
        //                           child: Text(
        //                         'Processing',
        //                         style: TextStyle(
        //                             fontSize: 12,
        //                             color: Colors.white,
        //                             fontWeight: FontWeight.w500),
        //                       )),
        //                     )),
        //               )
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
        //   child: Card(
        //     elevation: 0,
        //     shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(14),
        //         side: const BorderSide(
        //             color: Color.fromARGB(255, 227, 225, 225))),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         const Padding(
        //           padding: EdgeInsets.only(top: 15.0, left: 8),
        //           child: Text(
        //             'Triglycerides Test',
        //             style: TextStyle(
        //                 fontSize: 14,
        //                 fontWeight: FontWeight.w700,
        //                 color: Color.fromARGB(255, 187, 42, 34)),
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: [
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.only(bottom: 6.0),
        //                     child: Text(
        //                       'Order Id',
        //                       style: TextStyle(
        //                           fontSize: 13,
        //                           fontWeight: FontWeight.w600,
        //                           color: Colors.black),
        //                     ),
        //                   ),
        //                   Text(
        //                     '#10353551',
        //                     style: TextStyle(
        //                         fontSize: 12,
        //                         fontWeight: FontWeight.w500,
        //                         color: Colors.black),
        //                   ),
        //                 ],
        //               ),
        //               Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.only(bottom: 6.0),
        //                     child: Text(
        //                       'Date',
        //                       style: TextStyle(
        //                           fontSize: 13,
        //                           fontWeight: FontWeight.w600,
        //                           color: Colors.black),
        //                     ),
        //                   ),
        //                   Text(
        //                     '25 Jan, 2023',
        //                     style: TextStyle(
        //                         fontSize: 12,
        //                         fontWeight: FontWeight.w500,
        //                         color: Colors.black),
        //                   ),
        //                 ],
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.only(left: 8, bottom: 14),
        //                 child: Card(
        //                     color: const Color.fromARGB(255, 119, 216, 144),
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(5)),
        //                     child: const Padding(
        //                       padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
        //                       child: Center(
        //                           child: Text(
        //                         'Completed',
        //                         style: TextStyle(
        //                             fontSize: 12,
        //                             color: Colors.white,
        //                             fontWeight: FontWeight.w500),
        //                       )),
        //                     )),
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.only(left: 2, bottom: 14),
        //                 child: Card(
        //                     color: const Color.fromARGB(255, 192, 47, 36),
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(5)),
        //                     child: Padding(
        //                         padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
        //                         child: Row(
        //                           children: [
        //                             Center(
        //                                 child: Text(
        //                               'Download',
        //                               style: TextStyle(
        //                                   fontSize: 12,
        //                                   color: Colors.white,
        //                                   fontWeight: FontWeight.w500),
        //                             )),
        //                             SvgPicture.asset(
        //                                 "assets/images/download-icon2.svg"),
        //                           ],
        //                         ))),
        //               )
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),