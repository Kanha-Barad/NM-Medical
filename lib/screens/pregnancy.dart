import 'package:flutter/material.dart';

import '../widgets/IconTextWidget.dart';
import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/customContainer.dart';
import 'Pregnancy/bloodtest.dart';
import 'Pregnancy/nine_month.dart';
import 'Pregnancy/sonography.dart';

class Pregnancy extends StatefulWidget {
  @override
  State<Pregnancy> createState() => _PregnancyState();
}

class _PregnancyState extends State<Pregnancy> {
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
          title: "PREGNANCY",
          svgAssetPath: "assets/pregnancy/pregnancy-white.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BlooDTEST()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/pregnancy/blood-test.svg',
                      labelText: 'Blood Test',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SONOgraphY()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/pregnancy/sonography.svg',
                      labelText: 'Sonography',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NIneMonTH()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/pregnancy/nine-month.svg',
                      labelText: 'Nine Month',
                    ),
                  ),
                ]))
      ])),
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
