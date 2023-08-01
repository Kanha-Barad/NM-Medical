import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/forMoreInformation.dart';

class CardiacCT extends StatefulWidget {
  const CardiacCT({Key? key}) : super(key: key);

  @override
  State<CardiacCT> createState() => _CardiacCTState();
}

class _CardiacCTState extends State<CardiacCT> {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "CARDIAC CT",
          svgAssetPath: "assets/diagnostic-test/cardiac-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/diagnostic-test/cardiac-ct-img2.jpg"),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "Cardiac CT offers information about any blockages present, location of the block, percentage of stenosis, and nature of the plaque.",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
          child: Text(
              "Coronary CT Angio is also extremely useful in evaluating patency of stents and the condition of the bypass graft post-CABG.",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
          child: Text(
              "A preliminary screening of the arteries can also be offered by simply evaluating the Calcium Score, which only takes a couple of seconds.",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
