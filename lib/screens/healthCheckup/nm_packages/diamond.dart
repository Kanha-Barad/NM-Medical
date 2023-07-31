import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/comparepackages.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/enquire.dart';
import '../../../widgets/whatsappmessage.dart';


import '../../../widgets/Enquary.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/bottom_navigation.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/packageinvestmentwidget.dart';
import '../../../widgets/userdrawer.dart';

class DiaMoNDPackageDetails extends StatefulWidget {
  @override
  State<DiaMoNDPackageDetails> createState() => _DiaMoNDPackageDetailsState();
}

final value = NumberFormat("#,##0", "en_US");

class _DiaMoNDPackageDetailsState extends State<DiaMoNDPackageDetails> {
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
          title: "DIAMOND",
          svgAssetPath: "assets/nm-packages/diamond-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        CustomWidgetInvestmentContainer(
          InvesmentTitle: "Diamond Investment",
          InvestmentValue: 33500,
          onEnquirenowButtonPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => EnQUiry())));
          },
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text("Pathology Tests",
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("CBC + ESR",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
            ],
          ),
        ),
        const Divider(indent: 10, endIndent: 10, thickness: 1),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Tests for Diabetes",
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("Blood Sugar (Fasting)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Blood Sugar (PP / PG)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
            ],
          ),
        ),
        const Divider(indent: 10, endIndent: 10, thickness: 1),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Tests for Liver Disease",
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("SGOT",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("SGPT",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("GGPT",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Bilirubin",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Alkaline Phosphatase",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Proteins (Albumin, Gloubbin, A/G Ratio)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
            ],
          ),
        ),
        const Divider(indent: 10, endIndent: 10, thickness: 1),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Tests for Heart Disease",
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("LDH",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Triglycerides",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Cholesterol",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("HDL-Cholesterol",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("LDL-Cholesterol",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("VLDL-Cholesterol",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("LDL/HDL Ratio",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Total Cholesterol/HDL Ratio",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("Urea",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Creatinine",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Uric Acid",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Electrolytes",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Calcium",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Thyroid Panel(T3, T4, TSH)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Urine Routine",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("Physical Examination",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Dental Checkup",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Eye Checkup",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Gynaecological Exammination**",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Diet & Nutrition Counselling",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("Chest X-Ray (Digital)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("E.C.G. (12 Lead)",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Sonography Abdomen & Pelvis",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Stress Test",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Pap Smear**",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("2D Echo*",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Mammography**",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Dexa Bone Densitometry",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Body Fat Analysis",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Spirometry",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
            ],
          ),
        ),
        const Divider(indent: 10, endIndent: 10, thickness: 1),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Specialized Investigations",
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("Glycosylated Haemoglobin",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Vitamin D",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Vitamin B12",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Hepatitis B",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Allergy Screening test",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Troponin I Cardiac Screen",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Genetic Panel Cardiac Risk",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
            ],
          ),
        ),
        const Divider(indent: 10, endIndent: 10, thickness: 1),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Cancer Risk Marker",
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
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("PSA for Prostate Cancer*",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("CA 125 for Ovarian Cancer**",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Carotid Colour Doppler",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("CT Calcium Scoring",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Coronary CT Angio or MRI Whole Spine",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ComparePackage()));
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
        Divider(indent: 10, endIndent: 10, thickness: 1),
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
