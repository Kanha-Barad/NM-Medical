import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../../widgets/whatsappmessage.dart';


import '../../../widgets/Enquary.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/packageinvestmentwidget.dart';
import '../../../widgets/userdrawer.dart';
import '../nm_packages/enquire.dart';

class ExeCUtIVePlUSPackages extends StatefulWidget {
  const ExeCUtIVePlUSPackages({super.key});

  @override
  State<ExeCUtIVePlUSPackages> createState() => _ExeCUtIVePlUSPackagesState();
}

final value = NumberFormat("#,##0", "en_US");

class _ExeCUtIVePlUSPackagesState extends State<ExeCUtIVePlUSPackages> {
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
      appBar: BasicAppbar("HM", "",onUserProfileIconTap: handleUserProfileIconTap,),
     endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "EXECUTIVE PLUS",
          svgAssetPath: "assets/health-360/executive-plus-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context, true);
          },
        ),
        CustomWidgetInvestmentContainer(
            InvesmentTitle: "Executive Plus Investment",
            onEnquirenowButtonPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => EnQUiry())));
            },
            InvestmentValue: 9000),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text("Pathology Tests",
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
              const Text("Complete Haemogram",
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
              const Text("(Haemoglobin, RBC, WBC & Platelet)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("ESR",
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
              const Text("Fasting Sugar",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("PP / PG Sugar",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("SGOT, SGPT, GGTP",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("Alkaline Phosphatase, Bilirubin",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("Albumin, Globulin, A/G Ratio",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("Triglycerides, Cholesterol, HDL-Cholesterol",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("LDL-Cholesterol, VLDL-Cholesterol",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("LDL/HDL & total / HDLCholesterol Ratios",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("Urea, Creatinine",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("Uric Acid, Electrolytes",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("Urine Routine, Stool Routine***",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500))
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
              const Text("Sonography (Abdomen & Pelvis)",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500))
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
        Divider(indent: 10, endIndent: 10, thickness: 1),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text("Plus",
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
              const Text("Stress Test*",
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
              const Text("Mammography**",
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
              const Text("DEXA (Hip, Spine, Forearm)",
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
              const Text("Pap smear**",
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
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Note : We reserve rights to add / delete tests.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500)),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
