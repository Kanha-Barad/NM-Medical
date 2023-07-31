import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/diagnostictest/cardiacCT.dart';
import 'package:nmmedical/screens/diagnostictest/cardiology.dart';
import 'package:nmmedical/screens/diagnostictest/digitalHistopatholy.dart';
import 'package:nmmedical/screens/diagnostictest/geneticTesting.dart';
import 'package:nmmedical/screens/diagnostictest/molecularPathology.dart';
import 'package:nmmedical/screens/diagnostictest/sleepApnea.dart';
import 'package:nmmedical/screens/diagnostictest/wholebodyMRI.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../widgets/IconTextWidget.dart';
import '../widgets/customContainer.dart';
import 'diagnostictest/allergy.dart';
import 'diagnostictest/pathology.dart';
import 'diagnostictest/radiology.dart';

String DiagnosticTestCArt = "";

class DiagnosticTests extends StatefulWidget {
  DiagnosticTests(TestCArt) {
    DiagnosticTestCArt = "";
    DiagnosticTestCArt = TestCArt;
  }
  @override
  State<DiagnosticTests> createState() => _DiagnosticTestsState();
}

class _DiagnosticTestsState extends State<DiagnosticTests> {
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
        appBar: BasicAppbar("", DiagnosticTestCArt,onUserProfileIconTap: handleUserProfileIconTap,),
        
        endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked,),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              CustomContainerBar(
                title: "DIAGNOSTIC TESTS",
                svgAssetPath:
                    "assets/diagnostic-test/diagnostic-test-white.svg",
                onBackButtonPressed: () {
                  Navigator.pop(context);
                },
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      // mainAxisSpacing: 0.0, // Adjust the vertical spacing between icons
                      // crossAxisSpacing:
                      //     0.0, // Adjust the horizontal spacing between icons
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Pathology("TC")));
                          },
                          child: buildIconItem(
                            imageAsset: 'assets/diagnostic-test/pathology.svg',
                            labelText: 'Pathology',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Radiology("TC")));
                          },
                          child: buildIconItem(
                            imageAsset: 'assets/diagnostic-test/radiology.svg',
                            labelText: 'Radiology',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cardiology()));
                          },
                          child: buildIconItem(
                            imageAsset: 'assets/diagnostic-test/cardiology.svg',
                            labelText: 'Cardiology',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WholebodyMRI()));
                          },
                          child: buildIconItem(
                            imageAsset:
                                'assets/diagnostic-test/whole-body-mri.svg',
                            labelText: 'Whole Body\nMRI',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CardiacCT()));
                          },
                          child: buildIconItem(
                            imageAsset: 'assets/diagnostic-test/cardiac-ct.svg',
                            labelText: 'Cardiac\nCT',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DigitalHistopathology()));
                          },
                          child: buildIconItem(
                            imageAsset:
                                'assets/diagnostic-test/digital-histopathology.svg',
                            labelText: 'Digital\nHistopathology',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MolecularPathology()));
                          },
                          child: buildIconItem(
                            imageAsset:
                                'assets/diagnostic-test/molecular-pathology.svg',
                            labelText: 'Molecular\nPathology',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GeneticTesting()));
                          },
                          child: buildIconItem(
                            imageAsset:
                                'assets/diagnostic-test/generic-testing.svg',
                            labelText: 'Genetic\nTesting',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SleepApnea()));
                          },
                          child: buildIconItem(
                            imageAsset:
                                'assets/diagnostic-test/sleep-apena.svg',
                            labelText: 'Sleep\napnea',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Allergy("TC")));
                          },
                          child: buildIconItem(
                            imageAsset: 'assets/diagnostic-test/allergy.svg',
                            labelText: 'Allergy',
                          ),
                        ),
                      ]))
            ])),
        bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',));
  }
}
