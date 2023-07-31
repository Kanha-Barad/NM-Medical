import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../../widgets/whatsappmessage.dart';


import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/userdrawer.dart';
import '../customContainer.dart';

class LoYALityPROgraM extends StatefulWidget {
  const LoYALityPROgraM({super.key});

  @override
  State<LoYALityPROgraM> createState() => _LoYALityPROgraMState();
}

class _LoYALityPROgraMState extends State<LoYALityPROgraM> {
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
      appBar: BasicAppbar("","",onUserProfileIconTap: handleUserProfileIconTap,),
     endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "LOYALITY PROGRAM",
          svgAssetPath: "assets/loyalty-program/loyalty-program-icon.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
          child: Text("Cooming Soon..."),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        WhatsApp(context),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
