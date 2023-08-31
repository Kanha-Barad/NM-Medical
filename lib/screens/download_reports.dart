import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../controllers/Download_Report_Controller.dart';
import '../models/Download_Reports_Models.dart';
import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/customContainer.dart';

class DonwloadReport extends StatefulWidget {
  @override
  State<DonwloadReport> createState() => _DonwloadReportState();
}

class _DonwloadReportState extends State<DonwloadReport> {
  bool isUserProfileIconClicked = false;
  bool isMenuClicked = false;
  late Future<List<Report>> reportsFuture;

  @override
  void initState() {
    super.initState();
    reportsFuture = ReportController.fetchReports();
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
            title: "REPORTS",
            svgAssetPath: "assets/images/download-report.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
          Expanded(
            child: FutureBuilder<List<Report>>(
                future: reportsFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                        child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 186, 43, 35),
                    ));
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return Text('No reports available.');
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              ListTile(
                                leading: Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: SvgPicture.asset(
                                      "assets/images/medical-report.svg"),
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                      snapshot.data![index].SERVICE_NAME,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4)),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 6.0),
                                  child: Text(
                                      snapshot.data![index].BILL_DT.toString(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                ),
                                trailing: snapshot
                                                .data![index].SERVICE_STATUS1 ==
                                            "Completed" ||
                                        snapshot.data![index].SERVICE_STATUS1 ==
                                            "Dispatch"
                                    ? SvgPicture.asset(
                                        "assets/images/download-icon.svg")
                                    : null,
                              ),
                              if (index < snapshot.data!.length - 1)
                                Divider(
                                    indent: 14, endIndent: 14, thickness: 1),
                            ],
                          );
                          // Divider(indent: 14, endIndent: 14, thickness: 1);
                        });
                  }
                }),
          ),
        ]),
        bottomNavigationBar: AllBottomNavigationBar(
          payMNETNAv: '',
        ));
  }
}


// ListTile(
//           leading: Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: SvgPicture.asset("assets/images/medical-report.svg"),
//           ),
//           title: Text("Blood Cholesterol Test",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600)),
//           subtitle: Text("10/09/2022",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400)),
//           trailing: SvgPicture.asset("assets/images/download-icon.svg"),
//         ),
//         Divider(indent: 14, endIndent: 14, thickness: 1),
//         ListTile(
//           leading: Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: SvgPicture.asset("assets/images/medical-report.svg"),
//           ),
//           title: Text("Blood Cholesterol Test",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600)),
//           subtitle: Text("10/09/2022",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400)),
//           trailing: SvgPicture.asset("assets/images/download-icon.svg"),
//         ),
//         Divider(indent: 14, endIndent: 14, thickness: 1),
//         ListTile(
//           leading: Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: SvgPicture.asset("assets/images/medical-report.svg"),
//           ),
//           title: Text("Blood Cholesterol Test",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600)),
//           subtitle: Text("10/09/2022",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400)),
//           trailing: SvgPicture.asset("assets/images/download-icon.svg"),
//         ),
//         Divider(indent: 14, endIndent: 14, thickness: 1),
//         ListTile(
//           leading: Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: SvgPicture.asset("assets/images/medical-report.svg"),
//           ),
//           title: Text("Blood Cholesterol Test",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600)),
//           subtitle: Text("10/09/2022",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400)),
//           trailing: SvgPicture.asset("assets/images/download-icon.svg"),
//         ),
//         Divider(indent: 14, endIndent: 14, thickness: 1),
//         ListTile(
//           leading: Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: SvgPicture.asset("assets/images/medical-report.svg"),
//           ),
//           title: Text("Blood Cholesterol Test",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600)),
//           subtitle: Text("10/09/2022",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400)),
//           trailing: SvgPicture.asset("assets/images/download-icon.svg"),
//         ),
//         Divider(indent: 14, endIndent: 14, thickness: 1),
//         ListTile(
//           leading: Padding(
//             padding: const EdgeInsets.only(top: 5.0),
//             child: SvgPicture.asset("assets/images/medical-report.svg"),
//           ),
//           title: Text("Blood Cholesterol Test",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600)),
//           subtitle: Text("10/09/2022",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400)),
//           trailing: SvgPicture.asset("assets/images/download-icon.svg"),
//         ),