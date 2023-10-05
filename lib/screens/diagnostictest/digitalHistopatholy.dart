import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/forMoreInformation.dart';

class DigitalHistopathology extends StatefulWidget {
  const DigitalHistopathology({Key? key}) : super(key: key);

  @override
  State<DigitalHistopathology> createState() => _DigitalHistopathologyState();
}

class _DigitalHistopathologyState extends State<DigitalHistopathology> {
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
            title: "DIGITAL HISTIPATHOLOGY",
            svgAssetPath:
                "assets/diagnostic-test/digital-histopathology-title.svg",
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
                padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
                child:
                    Image.asset("assets/diagnostic-test/histopathology-1.png"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
                child: Text(
                    "Digital pathology will benefit the patients the most as it facilitates getting a second opinion with ease from the world's experts thus providing the best outcome of cancer therapy.",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        height: 1.7,
                        fontWeight: FontWeight.w400)),
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
