import 'package:flutter/material.dart';
import '../../widgets/forMoreInformation.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';

class PriMARY extends StatefulWidget {
  const PriMARY({super.key});

  @override
  State<PriMARY> createState() => _PriMARYState();
}

class _PriMARYState extends State<PriMARY> {
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
            title: "PRIMARY",
            svgAssetPath: "assets/histopathology/primary-title.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 10, 10),
              child: Text(
                "Histopatholgy opinion from the grossing speciman by our supper speciality panel of Doctors",
                style: TextStyle(
                  fontSize: 14,
                  height: 1.7,
                ),
              )),
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
