import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:intl/intl.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/bottom_navigation.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/forMoreInformation.dart';

class PredictiveGemonicMapping extends StatefulWidget {
  @override
  State<PredictiveGemonicMapping> createState() =>
      _PredictiveGemonicMappingState();
}

final value = NumberFormat("#,##0", "en_US");

class _PredictiveGemonicMappingState extends State<PredictiveGemonicMapping> {
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
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "PREDICTIVE GENOMIC MAPPING",
          svgAssetPath: "assets/nm-packages/predictive-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 8),
          child: ListTile(
            leading: SvgPicture.asset("assets/health-checkup/cardiac-icon.svg"),
            title: Text("Cardiac",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: ListTile(
            leading:
                SvgPicture.asset("assets/health-checkup/diabetes-icon.svg"),
            title: Text("Diabetes",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: ListTile(
            leading: SvgPicture.asset("assets/health-checkup/obesity-icon.svg"),
            title: Text("Obesity",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: ListTile(
            leading:
                SvgPicture.asset("assets/health-checkup/nutrition-icon.svg"),
            title: Text("Nutrition",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: ListTile(
            leading: SvgPicture.asset("assets/health-checkup/fitness-icon.svg"),
            title: Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Text("Fitness",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: ListTile(
            leading: SvgPicture.asset("assets/health-checkup/cancer-icon.svg"),
            title: Text("Cancer",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),
          ),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        FormoreInformation(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
