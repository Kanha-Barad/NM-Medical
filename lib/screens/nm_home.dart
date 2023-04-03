import 'package:flutter/material.dart';
import 'package:nmmedical/screens/Pregnancy.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/userdrawer.dart';
import 'diagnostic_tests.dart';
import 'health_checkup.dart';
import 'homevisit.dart';

class NMHome extends StatefulWidget {
  @override
  State<NMHome> createState() => _NMHomeState();
}

class _NMHomeState extends State<NMHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(context),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 175,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: AssetImage("assets/images/home-banner.png"),
                    fit: BoxFit.fill)),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 10, 0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homeVisit()));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 5.0),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/services/home-visit.png"),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Text(
                            "Home\nVisit",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pregnancy()));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 22.0, bottom: 5.0),
                            child: Container(
                              height: 25,
                              width: 22,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/services/pregnancy.png"),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Text(
                            "Pregnancy",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22.0, bottom: 5.0),
                      child: Container(
                        height: 28,
                        width: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/services/cancer-genomics.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Text(
                      "Cancer &\nGenomics",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22.0, bottom: 5.0),
                      child: Container(
                        height: 27,
                        width: 23,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/services/upload-prescription.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Text(
                      "Upload\nPrescription",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 40, 10, 0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiagnosticTests()));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Container(
                              height: 26,
                              width: 24,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/services/diagnostic-tests.png"),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Text(
                            "Diagnostioc\nTests",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22.0, bottom: 5.0),
                      child: Container(
                        height: 26,
                        width: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/services/breast-imaging.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Text(
                      "Breast Imaging",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22.0, bottom: 5.0),
                      child: Container(
                        height: 27,
                        width: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/services/institutional.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Text(
                      "Institutional",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 37.0, bottom: 5.0),
                      child: Container(
                        height: 27,
                        width: 23,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/services/247-Support.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Text(
                      "24/7\nSupport",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 20, 0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HealthCheckUp()));
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, bottom: 5.0),
                            child: Container(
                              height: 26,
                              width: 23,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/services/health-check-up.png"),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Text(
                            "Health\nCheck Up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22.0, bottom: 5.0),
                      child: Container(
                        height: 26,
                        width: 22,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/services/histopathology.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Text(
                      "Histopathology",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22.0, bottom: 5.0),
                      child: Container(
                        height: 27,
                        width: 26,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/services/corporate.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Text(
                      "Corporate",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 36.0, bottom: 5.0),
                      child: Container(
                        height: 27,
                        width: 23,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/services/download-all-reports.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Text(
                      "Download All\nReports",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          )
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Column(
          //         children: [
          //           Container(
          //             height: 40,
          //             width: 40,
          //             decoration: const BoxDecoration(
          //                 shape: BoxShape.rectangle,
          //                 image: DecorationImage(
          //                     image: AssetImage("assets/services/homevisit.png"),
          //                     fit: BoxFit.fill)),
          //           ),
          //           const SizedBox(height: 2),
          //           const Text("Home\nVisit", textAlign: TextAlign.center)
          //         ],
          //       ),
          //       InkWell(
          //           child: Column(
          //             children: [
          //               Container(
          //                 height: 35,
          //                 width: 32,
          //                 decoration: const BoxDecoration(
          //                     shape: BoxShape.rectangle,
          //                     image: DecorationImage(
          //                         image: AssetImage(
          //                             "assets/services/diagnostictests.png"),
          //                         fit: BoxFit.fill)),
          //               ),
          //               const SizedBox(height: 3),
          //               const Text("Diagnostic\nTests",
          //                   textAlign: TextAlign.center)
          //             ],
          //           ),
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => DiagnosticTests()));
          //           }),
          //       InkWell(
          //           child: Column(
          //             children: [
          //               Container(
          //                 height: 40,
          //                 width: 33,
          //                 decoration: const BoxDecoration(
          //                     shape: BoxShape.rectangle,
          //                     image: DecorationImage(
          //                         image: AssetImage(
          //                             "assets/services/healthcheckup.png"),
          //                         fit: BoxFit.fill)),
          //               ),
          //               const SizedBox(height: 3),
          //               const Text("Health\nCheck Up",
          //                   textAlign: TextAlign.center)
          //             ],
          //           ),
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => HealthCheckUp()));
          //           })
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(7, 15, 0, 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       InkWell(
          //           child: Column(
          //             children: [
          //               Container(
          //                 height: 40,
          //                 width: 36,
          //                 decoration: const BoxDecoration(
          //                     shape: BoxShape.rectangle,
          //                     image: DecorationImage(
          //                         image:
          //                             AssetImage("assets/services/pregnancy.png"),
          //                         fit: BoxFit.fill)),
          //               ),
          //               const Text("Pregnancy", textAlign: TextAlign.center)
          //             ],
          //           ),
          //           onTap: () {
          //             Navigator.push(context,
          //                 MaterialPageRoute(builder: (context) => Pregnancy()));
          //           }),
          //       InkWell(
          //           child: Column(
          //             children: [
          //               Container(
          //                 height: 40,
          //                 width: 36,
          //                 decoration: const BoxDecoration(
          //                     shape: BoxShape.rectangle,
          //                     image: DecorationImage(
          //                         image: AssetImage(
          //                             "assets/services/breastimaging.png"),
          //                         fit: BoxFit.fill)),
          //               ),
          //               const Text("Breast Imaging",
          //                   textAlign: TextAlign.center)
          //             ],
          //           ),
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => BreastImaging()));
          //           }),
          //       InkWell(
          //           child: Column(
          //             children: [
          //               Container(
          //                 height: 40,
          //                 width: 40,
          //                 decoration: const BoxDecoration(
          //                     shape: BoxShape.rectangle,
          //                     image: DecorationImage(
          //                         image: AssetImage(
          //                             "assets/services/histopathology.png"),
          //                         fit: BoxFit.fill)),
          //               ),
          //               const Text("Histopathology",
          //                   textAlign: TextAlign.center)
          //             ],
          //           ),
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => Histopathology()));
          //           })
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 5, top: 6),
          //         child: Column(
          //           children: [
          //             Container(
          //               height: 40,
          //               width: 36,
          //               decoration: const BoxDecoration(
          //                   shape: BoxShape.rectangle,
          //                   image: DecorationImage(
          //                       image: AssetImage(
          //                           "assets/services/cancergenomics.png"),
          //                       fit: BoxFit.fill)),
          //             ),
          //             const Text("Cancer &\nGenomics",
          //                 textAlign: TextAlign.center)
          //           ],
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(right: 15),
          //         child: Column(
          //           children: [
          //             Container(
          //               height: 40,
          //               width: 40,
          //               decoration: const BoxDecoration(
          //                   shape: BoxShape.rectangle,
          //                   image: DecorationImage(
          //                       image:
          //                           AssetImage("assets/services/institutional.png"),
          //                       fit: BoxFit.fill)),
          //             ),
          //             const Text("Institutional", textAlign: TextAlign.center)
          //           ],
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(right: 10),
          //         child: Column(
          //           children: [
          //             Container(
          //               height: 40,
          //               width: 40,
          //               decoration: const BoxDecoration(
          //                   shape: BoxShape.rectangle,
          //                   image: DecorationImage(
          //                       image: AssetImage("assets/services/corporate.png"),
          //                       fit: BoxFit.fill)),
          //             ),
          //             const Text("Corporate", textAlign: TextAlign.center)
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       InkWell(
          //           child: Padding(
          //             padding: const EdgeInsets.only(right: 12),
          //             child: Column(
          //               children: [
          //                 Container(
          //                   height: 40,
          //                   width: 37,
          //                   decoration: const BoxDecoration(
          //                       shape: BoxShape.rectangle,
          //                       image: DecorationImage(
          //                           image: AssetImage(
          //                               "assets/services/uploadprescription.png"),
          //                           fit: BoxFit.fill)),
          //                 ),
          //                 const Text("Upload\nPrescription",
          //                     textAlign: TextAlign.center)
          //               ],
          //             ),
          //           ),
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => UploadPrescription()));
          //           }),
          //       Padding(
          //         padding: const EdgeInsets.only(right: 5),
          //         child: Column(
          //           children: [
          //             Container(
          //               height: 40,
          //               width: 40,
          //               decoration: const BoxDecoration(
          //                   shape: BoxShape.rectangle,
          //                   image: DecorationImage(
          //                       image: AssetImage("assets/services/support.png"),
          //                       fit: BoxFit.fill)),
          //             ),
          //             const Text("24/7\nSupport", textAlign: TextAlign.center)
          //           ],
          //         ),
          //       ),
          //       InkWell(
          //           child: Padding(
          //             padding: const EdgeInsets.only(left: 15),
          //             child: Column(
          //               children: [
          //                 Container(
          //                   height: 40,
          //                   width: 40,
          //                   decoration: const BoxDecoration(
          //                       shape: BoxShape.rectangle,
          //                       image: DecorationImage(
          //                           image: AssetImage(
          //                               "assets/services/downloadreports.png"),
          //                           fit: BoxFit.fill)),
          //                 ),
          //                 const Text("Download All\nReports",
          //                     textAlign: TextAlign.center)
          //               ],
          //             ),
          //           ),
          //           onTap: () {
          //             Navigator.push(
          //                 context,
          //                 MaterialPageRoute(
          //                     builder: (context) => DonwloadReport()));
          //           })
          //     ],
          //   ),
          // ),
        ]),
      ),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
