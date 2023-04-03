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
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/diagnostictests/diagnostic-test-white.png"),
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("DIAGNOSTIC TESTS",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600)),
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
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pathology()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/diagnostictests/pathology.png"),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Pathology", textAlign: TextAlign.center),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Radiology()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/diagnostictests/radiology.png"),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Radiology", textAlign: TextAlign.center),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cardiology()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/diagnostictests/cardiology.png"),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text("Cardiology", textAlign: TextAlign.center),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => WholebodyMRI()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/diagnostictests/whole-body-mri.png"),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text("Whole Body\nMRI",
                            textAlign: TextAlign.center),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CardiacCT()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/diagnostictests/cardiac-ct.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text("Cardiac\nCT",
                                textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DigitalHistopathology()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/diagnostictests/digital-histopathology.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text("Digital\nHistopathology",
                                textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MolecularPathology()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        Container(
                          height: 35,
                          width: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/diagnostictests/molecular-pathology.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: const Text("Molecular\nPathology",
                              textAlign: TextAlign.center),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GeneticTesting()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/diagnostictests/generic-testing.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: const Text("Genetic\nTesting",
                                textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SleepApnea()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            height: 32,
                            width: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/diagnostictests/sleep-apena.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: const Text("Sleep\napnea",
                                textAlign: TextAlign.center),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Allergy()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/diagnostictests/allergy.png"),
                                fit: BoxFit.fill)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child:
                            const Text("Allergy", textAlign: TextAlign.center),
                      )
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
