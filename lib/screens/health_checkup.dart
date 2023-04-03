import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/userdrawer.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import 'healthCheckup/health_360.dart';
import 'healthCheckup/nm_health_checkup.dart';

class HealthCheckUp extends StatefulWidget {
  @override
  State<HealthCheckUp> createState() => _HealthCheckUpState();
}

class _HealthCheckUpState extends State<HealthCheckUp> {
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
                              "assets/healthcheckup/health-check-up-title.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("HEALTH CHECK-UP",
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
          padding: const EdgeInsets.only(top: 25, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/healthcheckup/nm-logo.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("NM Medical",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 8),
                      InkWell(
                          child: SizedBox(
                              height: 35,
                              width: 140,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                      color: Color.fromARGB(255, 187, 42, 34),
                                      width: 1,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 3, right: 3),
                                      child: Text("Click for Package",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 187, 42, 34))),
                                    ),
                                  ))),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NMHealthCheckUP()));
                          })
                    ]),
              )
            ],
          ),
        ),
        const Divider(
          indent: 25,
          endIndent: 25,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/health-360-logo.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 26),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Health 360",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 8),
                      InkWell(
                          child: SizedBox(
                              height: 35,
                              width: 140,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                      color: Color.fromARGB(255, 187, 42, 34),
                                      width: 1,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 3, right: 3),
                                      child: Text("Click for Package",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 187, 42, 34))),
                                    ),
                                  ))),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Health360()));
                          })
                    ]),
              )
            ],
          ),
        ),
        const Divider(
          indent: 25,
          endIndent: 25,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/healthcheckup/eva-health-logo.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("EVA Health",
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ),
                      const SizedBox(height: 8),
                      InkWell(
                          child: SizedBox(
                              height: 35,
                              width: 140,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                      color: Color.fromARGB(255, 187, 42, 34),
                                      width: 1,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 3, right: 3),
                                      child: Text("Click for Package",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: Color.fromARGB(
                                                  255, 187, 42, 34))),
                                    ),
                                  ))),
                          onTap: () {})
                    ]),
              )
            ],
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
