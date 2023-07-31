import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/forMoreInformation.dart';

String alleRGYTestCArt = "";

class Allergy extends StatefulWidget {
  Allergy(TestCArt) {
    alleRGYTestCArt = "";
    alleRGYTestCArt = TestCArt;
  }

  @override
  State<Allergy> createState() => _AllergyState();
}

class _AllergyState extends State<Allergy> {
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
      appBar: BasicAppbar("", alleRGYTestCArt, onUserProfileIconTap: handleUserProfileIconTap),
      endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "ALLERGY",
          svgAssetPath: "assets/diagnostic-test/allergy-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/diagnostic-test/allergy-img1.jpg"),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 10, 10),
          child: Text(
              "Allergy testing is a very important prerequisite for early and correct identification and diagnosis of patients with respiratory, skin and gastrointestinal symptoms.",
              style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 10, 10),
          child: Text(
              "NM Medical now offers a full range of serum Allergy tests using FDA approved & WHO recommended method of Immunocap specific IgE quantification.",
              style: TextStyle(fontSize: 14)),
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
