import 'package:flutter/material.dart';
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
import '../../widgets/userdrawer.dart';
import '../widgets/IconTextWidget.dart';
import 'diagnostictest/allergy.dart';
import 'diagnostictest/pathology.dart';
import 'diagnostictest/radiology.dart';

class DiagnosticTests extends StatefulWidget {
  @override
  State<DiagnosticTests> createState() => _DiagnosticTestsState();
}

class _DiagnosticTestsState extends State<DiagnosticTests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BasicAppbar(""),
        drawer: userDrawer(),
        endDrawer: AppDrawer(),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 187, 42, 34),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset(
                          "assets/diagnostictests/diagnostic-test-white.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("DIAGNOSTIC TESTS",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600)),
                    ),
                    const Spacer(),
                    TextButton.icon(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios,
                            color: Colors.white, size: 18),
                        label: const Text("BACK",
                            style: TextStyle(color: Colors.white)))
                  ])),
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
                                    builder: (context) => Pathology()));
                          },
                          child: buildIconItem(
                            imageAsset: 'assets/diagnostictests/pathology.png',
                            labelText: 'Pathology',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Radiology()));
                          },
                          child: buildIconItem(
                            imageAsset: 'assets/diagnostictests/radiology.png',
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
                            imageAsset: 'assets/diagnostictests/cardiology.png',
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
                                'assets/diagnostictests/whole-body-mri.png',
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
                            imageAsset: 'assets/diagnostictests/cardiac-ct.png',
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
                                'assets/diagnostictests/digital-histopathology.png',
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
                                'assets/diagnostictests/molecular-pathology.png',
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
                                'assets/diagnostictests/generic-testing.png',
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
                                'assets/diagnostictests/sleep-apena.png',
                            labelText: 'Sleep\napnea',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Allergy()));
                          },
                          child: buildIconItem(
                            imageAsset: 'assets/diagnostictests/allergy.png',
                            labelText: 'Allergy',
                          ),
                        ),
                      ]))
            ])),
        bottomNavigationBar: AllBottomNavigationBar());
  }
}
