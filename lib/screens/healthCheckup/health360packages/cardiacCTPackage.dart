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
import '../nm_packages/enquire.dart';

String navPAymnetCD = "";

class CardiacCTPackages extends StatefulWidget {
  CardiacCTPackages(PAyMntCD) {
    navPAymnetCD = "";
    navPAymnetCD = PAyMntCD;
  }

  @override
  State<CardiacCTPackages> createState() => _CardiacCTPackagesState();
}

final value = NumberFormat("#,##0", "en_US");

class _CardiacCTPackagesState extends State<CardiacCTPackages> {
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
          title: "CARDIAC CT",
          svgAssetPath: "assets/health-360/cardiac-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context, true);
          },
        ),
        CustomWidgetInvestmentContainer(
            InvesmentTitle: "Cardiac CT Investment",
            onEnquirenowButtonPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => EnQUiry())));
            },
            InvestmentValue: 3000),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/health-360/cardiac-ct-new.jpg",
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
            "Health 360 has acquired the world's fastest 64 Slice Cardiac CT Scanner for advanced CT applications.Now,get a comprehensive evaluation of the health of your heart in just a few minutes!Simply walk in for a Coronary CT Angiography on our Cardiac CT Scanner to identify any blockage in the arteries that supply blood to your heart.",
            style: TextStyle(fontSize: 14),
            softWrap: true,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
            "The test is safe and is not an invasive procedure unlike conventional catheter angiography.A normal report rules out possibility of a coronary artery blockage in the near future. Coronary CT Angio is also extremely useful in evaluating patency of stents and the condition of the bypass graft post-CABG. A preliminary screening of the arteries can also be done just by evaluating the Calcium Score. A low Calcium Score is synonymous with low clinically significant soft plaques in the coronary arteries.The Calcium Scoring test can be completed in a matter of seconds.",
            style: TextStyle(fontSize: 14),
            softWrap: true,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
            "Extended CT angiography of the renal arteries can also be done in the same seating without injection of additional contrast for a nominal additional amount of Rs.3000.",
            style: TextStyle(fontSize: 14),
            softWrap: true,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
            "To know the condition of your heart call us on given numbers and register for a Coronary CT Angio or Calcium Scoring test for yourself and your loved ones.Remember,often in heart attack cases,the only symptom of the disease is the attack itself.",
            style: TextStyle(fontSize: 14),
            softWrap: true,
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Applications of Cardiac CT",
              style: TextStyle(
                  color: Color.fromARGB(255, 187, 42, 34),
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Calcium Scoring",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Post-CABG evaluation",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Renal Angio",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Virtual Colonoscopy",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Coronary CT Angio",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Carotid Angio",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Peripheral Angio (for diabetics)",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Whole Body CT Scan",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Post-stent evaluation",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Pulmonary Angio",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "CT Urogram",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Dental CT",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              )
            ],
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: navPAymnetCD,
      ),
    );
  }
}
