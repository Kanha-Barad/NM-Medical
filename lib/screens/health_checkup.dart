import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/customContainer.dart';

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
          child: Column(children: [
        CustomContainerBar(
          title: "HEALTH CHECK-UP",
          svgAssetPath: "assets/health-checkup/health-check-up-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context, true);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 30),
          child: ListTile(
              leading: SvgPicture.asset(
                "assets/health-checkup/nm-logo.svg",
                width: 80,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 14.0, left: 6),
                child: Text("NM Medical",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(right: 40.0, top: 2),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NMHealthCheckUP()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                            color: Color.fromARGB(255, 187, 45, 36))),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
                      child: Text(
                        "CLICK FOR PACKAGE",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 187, 45, 36)),
                      ),
                    ),
                  ),
                ),
              )),
        ),
        Divider(
          indent: 25,
          endIndent: 25,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 4),
          child: ListTile(
              leading: SvgPicture.asset(
                "assets/health-checkup/health-360-logo.svg",
                width: 80,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 6),
                child: Text("Health 360",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(right: 40.0, top: 2),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Health360("HM", "BNP")));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                            color: Color.fromARGB(255, 187, 45, 36))),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
                      child: Text(
                        "CLICK FOR PACKAGE",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 187, 45, 36)),
                      ),
                    ),
                  ),
                ),
              )),
        ),
        Divider(
          indent: 25,
          endIndent: 25,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 4),
          child: ListTile(
              leading: SvgPicture.asset(
                "assets/health-checkup/eva-health-logo.svg",
                width: 80,
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 2.0, left: 6),
                child: Text("EVA Health",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(right: 40.0, top: 2),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EVAHealTHCheckUP()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                            color: Color.fromARGB(255, 187, 45, 36))),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
                      child: Text(
                        "CLICK FOR PACKAGE",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 187, 45, 36)),
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
