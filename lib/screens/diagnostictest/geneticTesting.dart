import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/userdrawer.dart';
import '../../widgets/whatsappmessage.dart';

class GeneticTesting extends StatefulWidget {
  const GeneticTesting({Key? key}) : super(key: key);

  @override
  State<GeneticTesting> createState() => _GeneticTestingState();
}

class _GeneticTestingState extends State<GeneticTesting> {
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
          title: "GENETIC TESTING",
          svgAssetPath: "assets/diagnostic-test/generic-testing-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/diagnostic-test/generic-test.jpg"),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text("The Future is Here",
              style: TextStyle(
                  fontSize: 14,
                  // color: Colors.black87,
                  fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text("Let's evolve from preventive to predictive diagnosis.",
              style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
          child: Text("From generalised to personalised treatment.",
              style: TextStyle(fontSize: 14)),
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
