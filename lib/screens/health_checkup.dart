import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/userdrawer.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import 'healthCheckup/EvaHealth.dart';
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
      appBar: BasicAppbar(""),
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
                child: Image.asset(
                    "assets/healthcheckup/health-check-up-title.png"),
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
          padding: const EdgeInsets.only(left: 75.0, top: 25),
          child: ListTile(
            leading: Image.asset("assets/images/nm-logo.png"),
            title: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NM Medical",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Background color
                        // onPrimary: Colors.red, // Text color
                        side: BorderSide(
                            color: Color.fromARGB(
                                255, 187, 42, 34)), // Border color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20), // Rounded corners
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NMHealthCheckUP()));
                      },
                      child: Text("Click for Package",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 187, 42, 34)))),
                ],
              ),
            ),
          ),
        ),
        Divider(
          indent: 25,
          endIndent: 25,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 62.0, top: 6),
          child: ListTile(
            leading: Image.asset("assets/images/health-360-logo.png"),
            title: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Health 360",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // Background color
                        // onPrimary: Colors.red, // Text color
                        side: BorderSide(
                            color: Color.fromARGB(
                                255, 187, 42, 34)), // Border color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(20), // Rounded corners
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Health360("HM")));
                      },
                      child: Text("Click for Package",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 187, 42, 34)))),
                ],
              ),
            ),
          ),
        ),
        Divider(
          indent: 25,
          endIndent: 25,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 65.0, top: 10),
          child: ListTile(
            leading: SizedBox(
                width: 80,
                child: Image.asset("assets/images/eva-health-logo.png")),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("EVA Health",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Background color
                      // onPrimary: Colors.red, // Text color
                      side: BorderSide(
                          color:
                              Color.fromARGB(255, 187, 42, 34)), // Border color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVAHealTHCheckUP()));
                    },
                    child: Text("Click for Package",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 187, 42, 34)))),
              ],
            ),
          ),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
