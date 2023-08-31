import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../../widgets/forMoreInformation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/customContainer.dart';

class EVaPregnaNCY extends StatefulWidget {
  const EVaPregnaNCY({super.key});

  @override
  State<EVaPregnaNCY> createState() => _EVaPregnaNCYState();
}

class _EVaPregnaNCYState extends State<EVaPregnaNCY> {
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
          title: "EVA PREGNANCY",
          svgAssetPath: "assets/eva-packages/eva-pregnancy-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context, true);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
          child: Text("Cooming Soon", style: TextStyle(fontSize: 14)),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context,""),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
