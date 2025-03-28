import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/customContainer.dart';
import 'package:nmmedical/widgets/forMoreInformation.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';

String radIOLogYTEstCArt = "";

class Radiology extends StatefulWidget {
  Radiology(TestCArt) {
    radIOLogYTEstCArt = "";
    radIOLogYTEstCArt = TestCArt;
  }
  @override
  State<Radiology> createState() => _RadiologyState();
}

class _RadiologyState extends State<Radiology> {
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
        radIOLogYTEstCArt,
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
            title: "RADIOLOGY",
            svgAssetPath: "assets/diagnostic-test/radiology-title.svg",
            onBackButtonPressed: () {
              Navigator.pop(context, true);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 15, 12, 5),
                child: Image.asset("assets/diagnostic-test/radiology-img1.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text(
                        "3 Tesla MRI",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text(
                        "48 Channels 1.5T MRI",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text(
                        "Digital X-Ray",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text(
                        "Sonography and Colour Doppler",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text(
                        "3D Digital Mammography for breast cancer screening",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text(
                        "DEXA Bone Densitometry for Osteoporosis Screening",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text(
                        "EEG",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text(
                        "Digital OPG",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        softWrap: true,
                      ),
                    )
                  ],
                ),
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
