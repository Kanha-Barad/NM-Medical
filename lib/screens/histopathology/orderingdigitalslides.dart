import 'package:flutter/material.dart';
import '../../widgets/forMoreInformation.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';

class ORderingDiGitalSLides extends StatefulWidget {
  const ORderingDiGitalSLides({super.key});

  @override
  State<ORderingDiGitalSLides> createState() => _ORderingDiGitalSLidesState();
}

class _ORderingDiGitalSLidesState extends State<ORderingDiGitalSLides> {
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
            title: "ORDERING DIGITAL SLIDES",
            svgAssetPath:
                "assets/histopathology/ordering-digital-slides-title.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 0, 10),
                child: Text(
                  "Technology allows to store the slide digitaly to protrect braking of glass slide and also to prebvent image quality detoarity with time.",
                  style: TextStyle(
                    fontSize: 14,
                    height: 1.7,
                  ),
                ),
              ),
              Divider(
                indent: 15,
                endIndent: 15,
                thickness: 1.5,
              ),
              FormoreInformation(context, "")
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
