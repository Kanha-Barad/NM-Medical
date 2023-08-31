import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../widgets/forMoreInformation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../widgets/customContainer.dart';

class SONOgraphY extends StatefulWidget {
  const SONOgraphY({super.key});

  @override
  State<SONOgraphY> createState() => _SONOgraphYState();
}

class _SONOgraphYState extends State<SONOgraphY> {
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
          title: "SONOGRAPHY",
          svgAssetPath: "assets/pregnancy/sonography-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context, true);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 20, 0, 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Early Pregnancy Scan",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Anomaly Scan",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Color Doppler",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "4D Sonography",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context,""),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
