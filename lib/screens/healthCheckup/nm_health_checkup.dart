import 'package:flutter/material.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/comparepackages.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/userdrawer.dart';
import 'nm_packages/primary.dart';

class NMHealthCheckUP extends StatefulWidget {
  @override
  State<NMHealthCheckUP> createState() => _NMHealthCheckUPState();
}

class _NMHealthCheckUPState extends State<NMHealthCheckUP> {
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
                              "assets/healthcheckup/health-check-up.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("NM PACKAGES",
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
                  label:
                      const Text("BACK", style: TextStyle(color: Colors.white)))
            ])),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 35, 0, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  child: Column(
                    children: [
                      Container(
                        height: 33,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/healthcheckup/primary.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text("Primary", textAlign: TextAlign.center)
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrimaryPackageDetails()));
                  }),
              Column(
                children: [
                  Container(
                    height: 33,
                    width: 26,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage("assets/healthcheckup/gold.png"),
                            fit: BoxFit.fill)),
                  ),
                  const Text("Gold", textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 33,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/healthcheckup/gold-plus.png"),
                            fit: BoxFit.fill)),
                  ),
                  const Text("Gold Plus", textAlign: TextAlign.center)
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  children: [
                    Container(
                      height: 33,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/healthcheckup/platinum.png"),
                              fit: BoxFit.fill)),
                    ),
                    const SizedBox(height: 2),
                    const Text("Platinum", textAlign: TextAlign.center)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Column(
                  children: [
                    Container(
                      height: 33,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/healthcheckup/diamond.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Diamond", textAlign: TextAlign.center)
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 33,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/healthcheckup/nm-packages-health-360-deluxe.png"),
                            fit: BoxFit.fill)),
                  ),
                  const Text("Health 360 \nDeluxe", textAlign: TextAlign.center)
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 15, 0, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Container(
                      height: 33,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/healthcheckup/senior-citizens.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Senior \nCitizens", textAlign: TextAlign.center)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Column(
                  children: [
                    Container(
                      height: 33,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/healthcheckup/predictive-genomic-mapping.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Predictive \nGenomic Mapping",
                        textAlign: TextAlign.center)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 33,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/healthcheckup/whole-body-MRI.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 10),
                      child:
                          Text("Whole Body\nMRI", textAlign: TextAlign.center),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 15, 0, 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Column(
                  children: [
                    Container(
                      height: 33,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/healthcheckup/cardiac-CT.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Cardiac\nCT", textAlign: TextAlign.center)
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ComparePackage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    children: [
                      Container(
                        height: 33,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/healthcheckup/comparison-of-package.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text("Comparison \nOf Package",
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
