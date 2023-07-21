import 'package:flutter/material.dart';
import 'package:nmmedical/screens/healthCheckup/health360packages/cardiacCTPackage.dart';
import 'package:nmmedical/screens/healthCheckup/health360packages/executive.dart';
import 'package:nmmedical/screens/healthCheckup/health360packages/executiveplus.dart';
import 'package:nmmedical/screens/healthCheckup/health360packages/health360deluxepackage.dart';
import 'package:nmmedical/screens/healthCheckup/health360packages/health360package.dart';
import 'package:nmmedical/screens/healthCheckup/health360packages/health360pluspackages.dart';
import 'package:nmmedical/screens/healthCheckup/health360packages/wholebodyMRIPackages.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/userdrawer.dart';

String AppBarImg = "";

class Health360 extends StatefulWidget {
  Health360(AREAIMG) {
    AppBarImg = "";
    AppBarImg = AREAIMG;
  }
  @override
  State<Health360> createState() => _Health360State();
}

class _Health360State extends State<Health360> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: BasicAppbar(AppBarImg),
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
                  height: 35,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/healththreesixty/packages-details.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("HEALTH PACKAGES",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
              const Spacer(),
              TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: 18),
                  label:
                      const Text("BACK", style: TextStyle(color: Colors.white)))
            ])),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => ExeCUtIVePackages())));
                },
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/healththreesixty/executive.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Executive", textAlign: TextAlign.center)
                  ],
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ExeCUtIVePlUSPackages())));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/healththreesixty/executive-plus.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text("Executive Plus", textAlign: TextAlign.center)
                    ],
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HealTH360Packages())));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/healththreesixty/health-360.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text("Health 360", textAlign: TextAlign.center)
                    ],
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HealTH360PluSPackages())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/healththreesixty/health-360-plus.png"),
                                  fit: BoxFit.fill)),
                        ),
                        const Text("Health\n360 Plus",
                            textAlign: TextAlign.center)
                      ],
                    ),
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HealTH360DeluXePackages())));
                  },
                  child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 36,
                            width: 36,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/healththreesixty/health-360-deluxe.png"),
                                    fit: BoxFit.fill)),
                          ),
                          const Text("Health\n360 Deluxe",
                              textAlign: TextAlign.center)
                        ],
                      ))),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => CardiacCTPackages())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 43,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/healththreesixty/cardiac-CT.png"),
                                  fit: BoxFit.fill)),
                        ),
                        const Text("Cardiac\nCT", textAlign: TextAlign.center)
                      ],
                    ),
                  )),
            ],
          ),
        ),
        InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => WholEBoDYMRIPackAgeS())));
            },
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 14, 0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/healththreesixty/whole-body-MRI.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text("Whole\nBody MRI", textAlign: TextAlign.center)
                    ],
                  )
                ])))
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
