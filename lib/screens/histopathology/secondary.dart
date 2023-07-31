import 'package:flutter/material.dart';
import '../../../widgets/whatsappmessage.dart';


import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/userdrawer.dart';

class SEconDarY extends StatefulWidget {
  const SEconDarY({super.key});

  @override
  State<SEconDarY> createState() => _SEconDarYState();
}

class _SEconDarYState extends State<SEconDarY> {
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
          title: "SECONDARY",
          svgAssetPath: "assets/histopathology-secondary/secondary-white.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/histopathology-secondary/local-menu.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Text(
            "LOCAL",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text(
              "Histopatholgy opinion from the grossing speciman by our supper speciality panel of Doctors"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child:
              Image.asset("assets/histopathology-secondary/national-menu.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Text(
            "National",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text("From renowned Hospitals & Cancer centres In India"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset(
              "assets/histopathology-secondary/international-menu.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Text(
            "International",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text(
              "From renowned University Hospitals & Cancer centres around the globe especially from USA"),
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
