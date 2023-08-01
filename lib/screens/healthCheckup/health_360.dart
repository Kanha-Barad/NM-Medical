import 'package:flutter/material.dart';

import 'package:nmmedical/screens/healthCheckup/health360packages/executiveplus.dart';

import '../../widgets/IconTextWidget.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import 'health360packages/cardiacCTPackage.dart';
import 'health360packages/executive.dart';
import 'health360packages/health360deluxepackage.dart';
import 'health360packages/health360package.dart';
import 'health360packages/health360pluspackages.dart';
import 'health360packages/wholebodyMRIPackages.dart';

String AppBarImg = "";
String boTTOMNavPaymeNT = "";

class Health360 extends StatefulWidget {
  Health360(AREAIMG, botTOMNAVPAyment) {
    AppBarImg = "";
    boTTOMNavPaymeNT = "";
    AppBarImg = AREAIMG;
    boTTOMNavPaymeNT = botTOMNAVPAyment;
  }
  @override
  State<Health360> createState() => _Health360State();
}

class _Health360State extends State<Health360> {
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
        AppBarImg,
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
          title: "HEALTH PACKAGES",
          svgAssetPath: "assets/images/packages-details.svg",
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
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExeCUtIVePackages()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-360/executive.svg',
                      labelText: 'Executive',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExeCUtIVePlUSPackages()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-360/executive-plus.svg',
                      labelText: 'Executive Plus',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HealTH360Packages(
                                    'BNP',
                                  )));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-360/health-360.svg',
                      labelText: 'Health 360',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HealTH360PluSPackages("BNP")));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-360/health-360-plus.svg',
                      labelText: 'Health\n360 Plus',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HealTH360DeluXePackages("BNP")));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-360/health-360-deluxe.svg',
                      labelText: 'Health\n360 Deluxe',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardiacCTPackages("BNP")));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-360/cardiac-CT.svg',
                      labelText: 'Cardiac\nCT',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  WholEBoDYMRIPackAgeS("BNP")));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-360/whole-body-MRI.svg',
                      labelText: 'Whole Body\nMRI',
                    ),
                  ),
                ]))
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: boTTOMNavPaymeNT,
      ),
    );
  }
}
