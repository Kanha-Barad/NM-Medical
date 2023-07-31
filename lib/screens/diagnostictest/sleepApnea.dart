import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/userdrawer.dart';
import '../../widgets/whatsappmessage.dart';

class SleepApnea extends StatefulWidget {
  const SleepApnea({Key? key}) : super(key: key);

  @override
  State<SleepApnea> createState() => _SleepApneaState();
}

class _SleepApneaState extends State<SleepApnea> {
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
          title: "SLEEP APNEA",
          svgAssetPath: "assets/diagnostic-test/sleep-apena-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/diagnostic-test/sleep-apnea-img1.jpg"),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 10, 10),
          child: Text(
              "Obstructive Sleep Apnea (OSA) is a condition characterized by intermittent stopping of breath during sleep resulting in snoring, reduced oxygen levels at night, restless quality of sleep and daytime drowsiness. If not diagnosed in time and left untreated, it can lead to a number of cardiovascular complications like Hypertension, Diabetes, Heart Attacks, Arrhythmias, and Stroke.",
              style:
                  TextStyle(fontSize: 14)),
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
