import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/forMoreInformation.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/customContainer.dart';

class BreastIMAGinG extends StatefulWidget {
  @override
  State<BreastIMAGinG> createState() => _BreastIMAGinGState();
}

class _BreastIMAGinGState extends State<BreastIMAGinG> {
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
            title: "BREAST IMAGING",
            svgAssetPath: "assets/breast-imaging/breast-imaging-white.svg",
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
                child: Image.asset(
                    "assets/breast-imaging/breast-screening-clinic-1.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text(
                  "Breast Screening Clinic",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600, height: 1.7),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, bottom: 10),
                child: Text(
                  "NM Medical has the most well-equipped breast diagnostic and screening clinic in the country including",
                  style: TextStyle(fontSize: 14, height: 1.7),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 10, 0, 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text(
                      "3D Digital Mammography with Tomosynthesis",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                      "Breast Ultrasound with Elastography",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                      "Fine needle aspirations",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                      "Wire localizations",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                      "Ultrasound guided core biopsies",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                      "Stereotactic biopsies",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                      "Vacuum assisted biopsies",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                      "Digital Histopathology with IHC staining",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                      "Molecular and Genetic lab including BRCA test",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                      "Counceling",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 8),
                child: Text(
                  "Our department head Dr Shilpa Lad brings many years of experience including number of years of experience in Canada.",
                  style: TextStyle(fontSize: 14, height: 1.7),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
                child: Image.asset(
                    "assets/breast-imaging/breast-screening-clinic-2.jpg"),
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
