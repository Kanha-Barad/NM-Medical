import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../widgets/forMoreInformation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../widgets/customContainer.dart';

class CancerAnDGEnomiCS extends StatefulWidget {
  const CancerAnDGEnomiCS({super.key});

  @override
  State<CancerAnDGEnomiCS> createState() => _CancerAnDGEnomiCSState();
}

class _CancerAnDGEnomiCSState extends State<CancerAnDGEnomiCS> {
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
          title: "CANCER AND GENOMICS",
          svgAssetPath: "assets/cancer-and-genomics/cancer-genomics-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/cancer-and-genomics/cancer-genomics.jpg"),
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
                "Wellness",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, height: 1),
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
                "Infectious Diseases",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, height: 1),
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
                "Reproductive Health & Pregnancy",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, height: 1),
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
                "Cyto Genetics & FISH",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, height: 1),
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
                "Cancer NGS Panels",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, height: 1),
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
                "Rare Genetic Disorders",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, height: 1),
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
                "Whole Genome & Exome",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, height: 1),
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
                "PharmaCogenomics",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, height: 1),
              )
            ],
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context, ""),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
