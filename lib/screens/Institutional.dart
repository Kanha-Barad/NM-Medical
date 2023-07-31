import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../../widgets/whatsappmessage.dart';


import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/userdrawer.dart';
import '../widgets/customContainer.dart';

class InstiTUTionAL extends StatefulWidget {
  const InstiTUTionAL({super.key});

  @override
  State<InstiTUTionAL> createState() => _InstiTUTionALState();
}

class _InstiTUTionALState extends State<InstiTUTionAL> {
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
          title: "INSTITUTIONAL",
          svgAssetPath: "assets/institutional/institutional-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
          child: Text(
            "Cooming Soon",
            style: TextStyle(fontSize: 14),
          ),
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
