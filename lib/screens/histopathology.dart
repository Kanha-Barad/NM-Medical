import 'package:flutter/material.dart';
import 'package:nmmedical/screens/histopathology/archievingslides.dart';
import 'package:nmmedical/screens/histopathology/frozeon.dart';
import 'package:nmmedical/screens/histopathology/orderingdigitalslides.dart';

import '../widgets/IconTextWidget.dart';
import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/customContainer.dart';
import 'histopathology/primary.dart';
import 'histopathology/secondary.dart';

class Histopathology extends StatefulWidget {
  @override
  State<Histopathology> createState() => _HistopathologyState();
}

class _HistopathologyState extends State<Histopathology> {
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
            title: "HISTOPATHOLOGY",
            svgAssetPath: "assets/histopathology/histopathology-white.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  childAspectRatio: 1.3,

                  // mainAxisSpacing: 0.0, // Adjust the vertical spacing between icons
                  // crossAxisSpacing:
                  //     0.0, // Adjust the horizontal spacing between icons
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => FroZEoN()));
                      },
                      child: buildIconItem(
                        imageAsset: 'assets/histopathology/frozeon.svg',
                        labelText: 'Frozen',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PriMARY()));
                      },
                      child: buildIconItem(
                        imageAsset: 'assets/histopathology/primary.svg',
                        labelText: 'Primary',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SEconDarY()));
                      },
                      child: buildIconItem(
                        imageAsset: 'assets/histopathology/secondary.svg',
                        labelText: 'Secondary',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ORderingDiGitalSLides()));
                      },
                      child: buildIconItem(
                        imageAsset:
                            'assets/histopathology/ordering-digital-slides.svg',
                        labelText: 'Ordering\nDigital Slides',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ARchievingTheSLides()));
                      },
                      child: buildIconItem(
                        imageAsset:
                            'assets/histopathology/arching-the-slides.svg',
                        labelText: 'Archiving\nThe Slides',
                      ),
                    ),
                  ]))
        ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
