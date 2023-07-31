import 'package:flutter/material.dart';
import '../../widgets/forMoreInformation.dart';


import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';

class FroZEoN extends StatefulWidget {
  const FroZEoN({super.key});

  @override
  State<FroZEoN> createState() => _FroZEoNState();
}

class _FroZEoNState extends State<FroZEoN> {
 bool isUserProfileIconClicked = false;

  // Function to handle user-profile icon tap
  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: BasicAppbar("", "", onUserProfileIconTap: handleUserProfileIconTap),
      endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child: Column(children: [
        CustomContainerBar(
          title: "FROZEON",
          svgAssetPath: "assets/histopathology/frozeon-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/histopathology/frozeon.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text(
              "Frozen facilities are required to give provisional histopathology diagnosis during a surgical procedure for the surgeon to decide the extent of surgery to be done."),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
