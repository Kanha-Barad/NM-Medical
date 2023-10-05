import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/healthCheckup/evapackages/WellnessPackage/EvaGold.dart';
import 'package:nmmedical/screens/healthCheckup/evapackages/WellnessPackage/EvaPlatinum.dart';
import 'package:nmmedical/screens/healthCheckup/evapackages/WellnessPackage/EvaSilver.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../../widgets/forMoreInformation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/customContainer.dart';

class EVaWELlnEssPackages extends StatefulWidget {
  const EVaWELlnEssPackages({super.key});

  @override
  State<EVaWELlnEssPackages> createState() => _EVaWELlnEssPackagesState();
}

class _EVaWELlnEssPackagesState extends State<EVaWELlnEssPackages> {
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
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomContainerBarDelegate(
            title: "EVA WELLNESS PACKAGES",
            svgAssetPath: "assets/eva-packages/eva-total-wellness2.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EVaSilverPackage()));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 5),
                  child: SizedBox(
                      height: 129,
                      width: 200,
                      child: Image.asset("assets/images/menu-silver-card.png")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 5),
                child: Text(
                  "Eva Silver",
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700, height: 1),
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EVaGoldPackage()));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: SizedBox(
                      height: 129,
                      width: 200,
                      child: Image.asset("assets/images/menu-gold-card.png")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 5),
                child: Text(
                  "Eva Gold",
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700, height: 1),
                ),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EVaPlatinumPackage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                    child: SizedBox(
                        height: 129,
                        width: 200,
                        child: Image.asset(
                            "assets/images/meun-platinum-card.png")),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 5),
                child: Text(
                  "Eva Platinum",
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700, height: 1),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
              //   child: Text("Cooming Soon", style: TextStyle(fontSize: 14)),
              // ),
              // Divider(
              //   indent: 10,
              //   endIndent: 10,
              //   thickness: 1,
              // ),
              // FormoreInformation(context, ""),
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
