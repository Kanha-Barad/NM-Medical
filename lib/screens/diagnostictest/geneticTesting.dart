import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/forMoreInformation.dart';

class GeneticTesting extends StatefulWidget {
  const GeneticTesting({Key? key}) : super(key: key);

  @override
  State<GeneticTesting> createState() => _GeneticTestingState();
}

class _GeneticTestingState extends State<GeneticTesting> {
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
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomContainerBarDelegate(
            title: "GENETIC TESTING",
            svgAssetPath: "assets/diagnostic-test/generic-testing-title.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
                child: Image.asset("assets/diagnostic-test/generic-test.jpg"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
                child: Text("The Future is Here",
                    style: TextStyle(
                        //fontSize: 14,
                        // color: Colors.black87,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
                child: Text(
                    "Let's evolve from preventive to predictive diagnosis.",
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
              FormoreInformation(context, "")
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
