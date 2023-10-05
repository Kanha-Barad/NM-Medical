import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/healthCheckup/evapackages/WellnessPackage/EvaComparePackage.dart';

import '../../../../widgets/app_drawer.dart';
import '../../../../widgets/basic_appbar.dart';
import '../../../../widgets/bottom_navigation.dart';
import '../../../../widgets/customContainer.dart';
import '../../../../widgets/forMoreInformation.dart';
import '../../../../widgets/packageinvestmentwidget.dart';

class EVaPlatinumPackage extends StatefulWidget {
  const EVaPlatinumPackage({super.key});

  @override
  State<EVaPlatinumPackage> createState() => _EVaPlatinumPackageState();
}

class _EVaPlatinumPackageState extends State<EVaPlatinumPackage> {
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
            title: "EVA PLATINUM",
            svgAssetPath: ("assets/eva-packages/eva-total-wellness2.svg"),
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
                  InvesmentTitle: "Special Price",
                  onEnquirenowButtonPressed: () {},
                  InvestmentValue: 60000),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Blood Group",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
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
                    const Text("Fasting Blood Sugar",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("HBA1C",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
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
                    const Text("Alkaline Phosphatase Bilirubin",
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
                    const Text("Albumin / Globulin / A/G Ratio",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
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
                    const Text("Cholesterol HDL / LDL / VLDL",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Renal Profile",
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
                    const Text("Urea, Creatinine",
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
                    const Text("Electrolytes",
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
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Specialised Blood Tests",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Text("Thyroid Panel",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("T3, T4, TSH",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Text("Vitamin Markers",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Vitamin D",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Vitamin B12",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Text("Iron Studies",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Text("LDH",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Text("Hormonal Studies",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("FSH, LH, Prolactin, Progesterone",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Text("Cancer Markers",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("CA 15.3 for Breast Cancer",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("CA 125 for Ovarian Cancer",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Pap Smear and HPV For Cervical Cancer",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Beta HCG for Stomach Cancer",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("AFP for Liver Cancer",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("CA 19.9 for Pancreatic Cancer",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 4, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("CEA for Colon Cancer",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
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
                    const Text("ECG",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Abdomen & Pelvic Sonography",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Pelvic Colour Doppler",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Carotid Colour Doppler",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("3D Digital Mammogram with Tomosynthesis",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Sonomammography",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("DEXA Hip, Spine, Forearm",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Whole body fat Analysis",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("3T MRI",
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
                    const Text("Brain",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Neck",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Abdomen & Pelvis",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Whole Spine Screening",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Consultations from our Panelist",
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
                    Expanded(
                      child: Text("Gynaecologist (Optional)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text("Dermatologist & Cosmetologist",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 15),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text("Lifestyle Counselling",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EVAComparePackage()));
                },
                child: Center(
                    child: Card(
                        color: const Color.fromARGB(255, 237, 28, 36),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
                          child: Text("COMPARE PACKAGE",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ))),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              FormoreInformation(context, ""),
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
