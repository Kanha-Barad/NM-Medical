import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:intl/intl.dart';
import '../../../widgets/Enquary.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/bottom_navigation.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/packageinvestmentwidget.dart';
import '../../../widgets/forMoreInformation.dart';
import 'enquire.dart';

class WholeBoDyMRI extends StatefulWidget {
  @override
  State<WholeBoDyMRI> createState() => _WholeBoDyMRIState();
}

final value = NumberFormat("#,##0", "en_US");

class _WholeBoDyMRIState extends State<WholeBoDyMRI> {
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
          title: "WHOLE BODY MRI",
          svgAssetPath: "assets/nm-packages/whole-body-mri-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        CustomWidgetInvestmentContainer(
          InvesmentTitle: "Whole Body MRI Investment",
          InvestmentValue: 25000,
          onEnquirenowButtonPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => EnQUiry())));
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 14, 8, 4),
          child: Container(
            // Set the height or width constraints as needed to control the size of the image
            // height: 200, // Example: Set the height to 200 units
            width: MediaQuery.of(context)
                .size
                .width, // Example: Set the width to 200 units
            child: Image.asset(
              "assets/diagnostic-test/whole-body-mri-img2.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "NM Medical has installed Whole Body MRI machines at Marine Lines, Parel, Bandra, Malad and Borivali in Mumbai and at Kalyani Nagar and Sancheti Hospital in Pune.",
              style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "Now, in just 45 minutes, get completely screened from head-to-toe. Whole Body MRI evaluates all the organs in the body including head, neck, chest, abdomen, pelvis, musculoskeleton and whole spine.",
              style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              Expanded(
                child: Text(
                  "Is completely harmless with no exposure to radiation",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  softWrap: true,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              Expanded(
                child: Text(
                  "Is fully non-invasive with no injection of contrast",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  softWrap: true,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "Has no side effects",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "Requires no prior preparations",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
            "Whole Body MRI costs Rs. 25,000/- However, it can be added to any of the NM Medical checkup packages for Rs. 20,000/-",
            style: TextStyle(fontSize: 14),
          ),
        ),
        const Divider(indent: 10, endIndent: 10, thickness: 1),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("MRI Applications",
              style: TextStyle(
                  color: Color.fromARGB(255, 187, 42, 34),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "MRI Brain with Advanced Neuro (DTI)",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              Expanded(
                child: const Text(
                  "MRI of the joints (Knee, Shoulder, Ankle, Elbow)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  softWrap: true,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "MRCP",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "Spectroscopy",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "Breast MRI",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "MR Angio",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "Cardiac MRI",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "MRI Whole Spine",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "MR Peripheral Angio",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "Stress MRI",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "MR Renal Angio",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: SvgPicture.asset("assets/images/bullet-icons.svg")),
              const Text(
                "Whole Body",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("*for Males only   |   **for Females only",
              style: TextStyle(
                  color: Color.fromARGB(255, 187, 42, 34),
                  fontSize: 14,
                  fontWeight: FontWeight.w500)),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        FormoreInformation(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
