import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../../widgets/Enquary.dart';
import '../../../widgets/forMoreInformation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/packageinvestmentwidget.dart';

class EVaMarITAlBeGINnIngS extends StatefulWidget {
  const EVaMarITAlBeGINnIngS({super.key});

  @override
  State<EVaMarITAlBeGINnIngS> createState() => _EVaMarITAlBeGINnIngSState();
}

class _EVaMarITAlBeGINnIngSState extends State<EVaMarITAlBeGINnIngS> {
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
          title: "EVA MARITAL BEGINNINGS",
          svgAssetPath: "assets/eva-packages/eva-marital-beginnings2.svg",
          onBackButtonPressed: () {
            Navigator.pop(context, true);
          },
        ),
        CustomWidgetInvestmentContainer(
            InvesmentTitle: "Special Price",
            onEnquirenowButtonPressed: () {},
            InvestmentValue: 9000),
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Blood Sugar Fasting / Random",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Creatinine",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
          padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
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
          padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("Hepatitis C",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("HIV I & II Antibodies",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("VDRL",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Thalassemia Studies",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
            ],
          ),
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400))
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
              const Text("T3, T4, TSH",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
              const Text("Chest X – Ray",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
            ],
          ),
        ),
        const Divider(indent: 10, endIndent: 10, thickness: 1),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
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
              Expanded(
                child: Text(
                    "Gynaecologist consultation from an expert panel of doctors (Optional)",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              )
            ],
          ),
        ),

        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
        //   child: Text("Cooming Soon", style: TextStyle(fontSize: 14)),
        // ),
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
