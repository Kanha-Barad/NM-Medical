import 'package:flutter/material.dart';
import '../../../widgets/whatsappmessage.dart';


import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/userdrawer.dart';

class ORderingDiGitalSLides extends StatefulWidget {
  const ORderingDiGitalSLides({super.key});

  @override
  State<ORderingDiGitalSLides> createState() => _ORderingDiGitalSLidesState();
}

class _ORderingDiGitalSLidesState extends State<ORderingDiGitalSLides> {
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "ORDERING DIGITAL SLIDES",
          svgAssetPath:
              "assets/histopathology/ordering-digital-slides-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 0, 10),
          child: Text(
              "Technology allows to store the slide digitaly to protrect braking of glass slide and also to prebvent image quality detoarity with time."),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
