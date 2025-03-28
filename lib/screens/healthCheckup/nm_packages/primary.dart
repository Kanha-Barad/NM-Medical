import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/comparepackages.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/enquire.dart';
import '../../../widgets/forMoreInformation.dart';

import '../../../widgets/Enquary.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/bottom_navigation.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/packageinvestmentwidget.dart';

class PrimaryPackageDetails extends StatefulWidget {
  @override
  State<PrimaryPackageDetails> createState() => _PrimaryPackageDetailsState();
}

final value = NumberFormat("#,##0", "en_US");

class _PrimaryPackageDetailsState extends State<PrimaryPackageDetails> {
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
            title: "PRIMARY",
            svgAssetPath: "assets/nm-packages/primary-title.svg",
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
              CustomWidgetInvestmentContainer(
                InvesmentTitle: "Primary Investment",
                InvestmentValue: 4500,
                onEnquirenowButtonPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => EnQUiry())));
                },
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
                child: Text("Routine Blood Tests",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("CBC + ESR",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
                child: Text("Diabetic Profile",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Blood Sugar(Fasting) & (PP /PG)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
                child: Text("Liver Profile",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("SGOT / SGPT / GGTP",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Bilirubin & Alkaline Phosphatase",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Proteins (Albumin / Globulin / AG Ratio)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
                child: Text("Cardiac Profile",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Triglycerides",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Total Cholesterol / HDL / LDL / VLDL",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text(
                        "LDL / HDL Ratio & Total Cholesterol / HDL Ratio",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
                child: Text("Tests for Kidney Disease",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Urea",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Creatinine",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Uric Acid",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Urine Routine",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
                child: Text("Consultations",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Physical Examination",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Dental Checkup",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Eye Checkup",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
                child: Text("Diagnostic Tests",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Chest X-Ray (Digital)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("E.C.G. (12 Lead)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
                child: Text("*for Males only   |   **for Females only",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ComparePackage()));
                },
                child: Center(
                    child: Card(
                        color: const Color.fromARGB(255, 237, 28, 36),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
                          child: Text("COMPARE PACKAGE",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ))),
              ),
              Divider(indent: 10, endIndent: 10, thickness: 1),
              FormoreInformation(context, "")
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
