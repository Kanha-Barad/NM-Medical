import 'package:flutter/material.dart';

import '../widgets/IconTextWidget.dart';
import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '247Support.dart';
import 'Corporate.dart';
import 'Institutional.dart';
import 'Pregnancy.dart';
import 'Upload_Prescription.dart';
import 'breast_imaging.dart';
import 'cancerAndGenomics.dart';
import 'diagnostic_tests.dart';
import 'download_reports.dart';
import 'health_checkup.dart';
import 'histopathology.dart';
import 'homevisit.dart';

class NMHome extends StatefulWidget {
  @override
  State<NMHome> createState() => _NMHomeState();
}

class _NMHomeState extends State<NMHome> {
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Image.asset('assets/images/home-banner.png',fit: BoxFit.cover,),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            childAspectRatio: 1.3,
            mainAxisSpacing: 0.0,
            // Adjust the vertical spacing between icons
            crossAxisSpacing: 0.0,
            // Adjust the horizontal spacing between icons
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => homeVisit()));
                },
                child: buildIconItem(
                  imageAsset: 'assets/services/home-visit.svg',
                  labelText: 'Home\nVisit',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DiagnosticTests("TC")));
                },
                child: buildIconItem(
                  imageAsset: 'assets/services/diagnostic-tests.svg',
                  labelText: 'Diagnostic\nTests',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HealthCheckUp()));
                },
                child: buildIconItem(
                  imageAsset: 'assets/services/health-check-up.svg',
                  labelText: 'Health\nCheck Up',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Pregnancy()));
                },
                child: buildIconItem(
                  imageAsset: 'assets/services/pregnancy.svg',
                  labelText: 'Pregnancy',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BreastIMAGinG()));
                },
                child: buildIconItem(
                  imageAsset: 'assets/services/breast-imaging.svg',
                  labelText: 'Breast Imaging',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Histopathology()));
                },
                child: buildIconItem(
                  imageAsset: 'assets/services/histopathology.svg',
                  labelText: 'Histopathology',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CancerAnDGEnomiCS()));
                },
                child: buildIconItem(
                  imageAsset: 'assets/services/cancer-genomics.svg',
                  labelText: 'Cancer &\nGenomics',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InstiTUTionAL()));
                },
                child: buildIconItem(
                  imageAsset: 'assets/services/institutional.svg',
                  labelText: 'Institutional',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CorPORatE()));
                },
                child: buildIconItem(
                  imageAsset: 'assets/services/corporate.svg',
                  labelText: 'Corporate',
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UploadPrescription()));
                  },
                  child: buildIconItem(
                    imageAsset: 'assets/services/upload-prescription.svg',
                    labelText: 'Upload\nPrescription',
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SuppoRT()));
                  },
                  child: buildIconItem(
                    imageAsset: 'assets/services/247-Support.svg',
                    labelText: '24/7\nSupport',
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DonwloadReport()));
                  },
                  child: buildIconItem(
                    imageAsset: 'assets/services/download-all-reports.svg',
                    labelText: 'Download All\nReports',
                  )),
              // Add more icon items here following the same pattern
            ],
          ),
        ]),
      ),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}

// Widget _buildIconItem({required String imageAsset, required String labelText}) {
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Image.asset(imageAsset),
//       Text(
//         labelText,
//         textAlign: TextAlign.center,
//         style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
//       ),
//     ],
//   );
// }
