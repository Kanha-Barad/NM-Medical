import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import '../controllers/Download_Report_Controller.dart';
import '../models/Download_Reports_Models.dart';
import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/customContainer.dart';
import 'package:http/http.dart' as http;
//import 'package:open_file/open_file.dart'; // Import the open_file package for opening downloaded files

class DonwloadReport extends StatefulWidget {
  @override
  State<DonwloadReport> createState() => _DonwloadReportState();
}

class _DonwloadReportState extends State<DonwloadReport> {
  bool isUserProfileIconClicked = false;
  bool isMenuClicked = false;
  late Future<List<Report>> reportsFuture;
  // late final String downloadUrl;

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
                    return Center(
                      child: const Text('No Reports Avilable',
                          style: TextStyle(fontSize: 12)),
                    );
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
                                    ? InkWell(
                                        onTap: () async {
                                          final downloadUrl =
                                              'http://115.112.254.129/NM_TESTING/public/HIMSReportViewer.aspx?uniuq_id=${snapshot.data![index].REPORT_CD}';
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //         builder: (context) =>
                                          //             WebViewExample(
                                          //               ReportURl: downloadUrl,
                                          //             )));
                                          //WebViewExample();
                                          // http://115.112.254.129/NM_TESTING/public/HIMSReportViewer.aspx?uniuq_id
                                          //'https://online1.nmmedical.com/link/slims/labreport?rptcd=824980-13231680111';

                                          try {
                                            await launch(downloadUrl);
                                          } catch (e) {
                                            print('Error launching URL: $e');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content: Text(
                                                        "Could not lunch URL")));
                                          }
                                        },
                                        child: SvgPicture.asset(
                                            "assets/images/download-icon.svg"),
                                      )
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

// class WebViewExample extends StatefulWidget {
//   String ReportURl = "";
//   WebViewExample({required this.ReportURl});
//   @override
//   _WebViewExampleState createState() => _WebViewExampleState();
// }

// class _WebViewExampleState extends State<WebViewExample> {
//   @override
//   void initState() {
//     super.initState();
//     // Enable WebView debugging (for development purposes)
//     WebView.platform = SurfaceAndroidWebView();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WebView Example'),
//       ),
//       body: WebView(
//         initialUrl: widget.ReportURl, // Replace with your desired URL
//         javascriptMode: JavascriptMode.unrestricted,
//       ),
//     );
//   }
// }

// class WebViewWidget extends StatelessWidget {
//   final String initialUrl;

//   WebViewWidget({required this.initialUrl});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WebView Example'),
//       ),
//       body: WebView(
//         initialUrl: initialUrl,
//         javascriptMode: JavascriptMode.unrestricted,
//         onPageStarted: (String url) {
//           // Handle page load started
//         },
//         onPageFinished: (String url) {
//           // Handle page load finished
//         },
//       ),
//     );
//   }
// }


// Future<void> _downloadFile(ReportCD) async {
  //   var status = await Permission.storage.request();
  //   if (status.isGranted) {
  //     final headers = {
  //       "User-Agent": "Mozilla/5.0",
  //       "Content-Type":
  //           "application/pdf", // Adjust the Content-Type based on the file type you are downloading
  //     };
  //     final response = await http.get(
  //       Uri.parse(Uri.encodeFull(ReportCD)),
  //       headers: headers,
  //     );

  //     if (response.statusCode == 200) {
  //       if (response.headers['content-type'] == 'application/pdf') {
  //         final directory = await getApplicationDocumentsDirectory();
  //         final filePath =
  //             '${directory.path}/downloaded_file.pdf'; // Change the file name and extension as needed
  //         final file = File(filePath);

  //         await file.writeAsBytes(response.bodyBytes);

  //         print('File downloaded successfully to: $filePath');

  //         // You can now work with the downloaded file, e.g., open it
  //         OpenFile.open(filePath);
  //       } else {
  //         // It's not a PDF, handle this case accordingly.
  //         print('Received content is not a PDF.');
  //         // Display an error message or take other appropriate action.
  //       }
  //     } else {
  //       print('Failed to download file. Status code: ${response.statusCode}');
  //       print('Response body: ${response.body}');
  //       throw Exception('Failed to download file');
  //     }
  //   } else {
  //     if (await Permission.storage.isPermanentlyDenied) {
  //       // The user has permanently denied the permission. Open app settings.
  //       await openAppSettings();
  //     } else {
  //       print('Permission denied.');
  //     }
  //   }
  // }

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