import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../../widgets/forMoreInformation.dart';

import '../../../widgets/Enquary.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/packageinvestmentwidget.dart';
import '../nm_packages/enquire.dart';

String navPayments = "";

class HealTH360Packages extends StatefulWidget {
  HealTH360Packages(PaymentCD) {
    navPayments = "";
    navPayments = PaymentCD;
  }

  @override
  State<HealTH360Packages> createState() => _HealTH360PackagesState();
}

final value = NumberFormat("#,##0", "en_US");

class _HealTH360PackagesState extends State<HealTH360Packages> {
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
        "HM",
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
            title: "HEALTH 360",
            svgAssetPath: "assets/health-360/health-360-title.svg",
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
                  InvesmentTitle: "Health 360 Investment",
                  onEnquirenowButtonPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => EnQUiry())));
                  },
                  InvestmentValue: 19500),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
                child: Text("Laboratory Investigations",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Complete Haemogram + ESR",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Diabetic Profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "Fasting Sugar",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "PP / PG Sugar",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "Glycosylated Haemoglobin (For Diabetics)",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Liver Profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "SGOT, SGPT, GGTP",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "Alkaline Phosphatase, Bilirubin",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "Albumin, Globulin, A/G Ratio",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Cardiac Profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "Triglycerides, Cholesterol, HDL-Cholesterol",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "LDL-Cholesterol, VLDL-Cholesterol",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "LDL-Cholesterol, VLDL-Choleste",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Renal Profile",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "Urea, Creatinine",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "Uric Acid, Electrolytes",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Thyroid Panel",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "T3, T4, TSH",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "(for hypo or hyper thyrodism)",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Urine Routine",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Vitamin Markers",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "Vitamin D",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "Vitamin B12",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "(Tests for Vitamin Deficiency)",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Cancer Risk Markers",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "PSA (Predictor for Prostate Cancer)*",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "CA 125 (Predictor for Ovarian Cancer)**",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Allergy Screening Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    const Text(
                      "(Test to screen for risk of Allergies)",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Divider(indent: 10, endIndent: 10, thickness: 1),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
                child: Text("Diagnostic Investigations",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Digital Chest X Ray",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("ECG",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Stress Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Sonography (Abdomen & Pelvis)",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "(liver, gall bladder, pancreas, spleen, kidneys, prostate, bladder in males, and uterus, ovaries in females)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          softWrap: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("ARFI Liver Elastography",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "(unique non-invasive test to assess early Liver damage through liver stiffness measurement on ultrasound)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          softWrap: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("2D Echo Color Doppler",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "(for pumping capacity of the heart, valvular conditions and any congenital defects)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          softWrap: true,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Mammography**",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "(to detect Breast Cancer)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("DEXA (Hip, Spine, Forearm)",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "(to detect Breast Cancer)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Pap smear**",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          "(to detect Cervical Cancer)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Carotid Color Doppler",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            "(to detect Clot in the Arteries of the Neck, which can lead to Stroke and Paralytic Attacks)",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            softWrap: true,
                          )),
                    )
                  ],
                ),
              ),
              Divider(indent: 10, endIndent: 10, thickness: 1),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
                child: Text("Consultations",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Physical Examination",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Eye Check up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            "(acuity of vision, colour vision, occular pressure, & fundoscopic examination)",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            softWrap: true,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Dental Check up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            "(to detect tooth decay, cavities, gum diseases, & precancerous mouth ulcers)",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                            softWrap: true,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Gynaecology Examination**",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Diet & Nutritional Counselling",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500))
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
              FormoreInformation(context, "")
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: navPayments,
      ),
    );
  }
}
