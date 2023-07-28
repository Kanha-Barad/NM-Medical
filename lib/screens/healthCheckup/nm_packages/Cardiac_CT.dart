import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:intl/intl.dart';
import '../../../widgets/Enquary.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/bottom_navigation.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/packageinvestmentwidget.dart';
import '../../../widgets/userdrawer.dart';
import '../../../widgets/whatsappmessage.dart';

class CArdiaCCTPackage extends StatefulWidget {
  @override
  State<CArdiaCCTPackage> createState() => _CArdiaCCTPackageState();
}

final value = NumberFormat("#,##0", "en_US");

class _CArdiaCCTPackageState extends State<CArdiaCCTPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("", ""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "CARDIAC CT",
          svgAssetPath: "assets/nm-packages/cardiac-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        CustomWidgetInvestmentContainer(
          InvesmentTitle: "Cardiac CT Investment",
          InvestmentValue: 6000,
          onEnquirenowButtonPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => EnQUiry())));
          },
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(8, 14, 8, 4),
            child: Image.asset("assets/diagnostic-test/cardiac-ct-img1.jpg")),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "NM Medical has acquired the world's best Scanner for advanced CT applications: 500 Slice 4D Dynamic CT. Now, get a comprehensive evaluation of the health of your heart in just a few minutes! Simply walk in for a Coronary CT Angiography on our Cardiac CT Scanner to identify any blockage in the arteries that supply blood to year heart.",
              style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "The test is safe and is not an invasive procedure unlike conventional catheter angiography. A normal report rules out possibility of a coronary artery blockage in the near future.",
              style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "Coronary CT Angio is also extremely useful in evaluating patency of stents and the condition of the bypass graft post-CABG.",
              style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "A preliminary screening of the arteries can also be done just by evaluating the Calcium Score. A low Calcium Score is synonymous with low clinically significant soft plaques in the coronary arteries. The Calcium Scoring test can be completed in a matter of seconds.",
              style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "To know the condition of your heart call us on given numbers and register for a Coronary CT Angio or Calcium Scoring test for yourself and your loved ones. Remember, often in hear attack cases, the only symptom of the disease is the attack itself.",
              style: TextStyle(fontSize: 14)),
        ),
        const Divider(indent: 10, endIndent: 10, thickness: 1),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "500 Slice Cardiac CT has the unique capability to extend the Coronary CT Angio study for Renal and Carotid Arteries in the same seating without any additional contrast injection and the same can be done at a nominal additional cost of Rs. 6000/",
              style: TextStyle(fontSize: 14)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 14, 8, 4),
          child: Image.asset("assets/diagnostic-test/cardiac-ct-img2.jpg"),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("CT Scan Applications",
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
              const Text("Calcium Scoring",
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
              const Text("Renal Angio",
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
              const Text("Coronary CT Angio",
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
              const Text("Peripheral Angio (for diabetics)",
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
              const Text("Post-stent evaluation",
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
              const Text("CT Urogram",
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
              const Text("Post-CABG evaluation",
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
              const Text("Virtual Colonoscopy",
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
              const Text("Carotid Angio",
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
              const Text("Whole Body CT Scan",
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
              const Text("Pulmonary Angio",
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
              const Text("Dental CT",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
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
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
