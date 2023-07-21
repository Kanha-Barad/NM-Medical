import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/comparepackages.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/enquire.dart';
import 'package:nmmedical/widgets/whatsappmessage.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/bottom_navigation.dart';
import '../../../widgets/userdrawer.dart';

class HealTH360DeLUxE extends StatefulWidget {
  @override
  State<HealTH360DeLUxE> createState() => _HealTH360DeLUxEState();
}

final value = NumberFormat("#,##0", "en_US");

class _HealTH360DeLUxEState extends State<HealTH360DeLUxE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 187, 42, 34),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image:
                              AssetImage("assets/nmpackages/packages-details.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("HEALTH 360 DELUXE",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14)),
              ),
              const Spacer(),
              TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: 18),
                  label:
                      const Text("BACK", style: TextStyle(color: Colors.white)))
            ])),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: SizedBox(
            height: 75,
            child: Card(
              elevation: 3.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 10, 0, 10),
                      child: Text("Health 360 Deluxe Investment",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 2, 0, 6),
                      child: Text('\u{20B9} ${value.format(64500)}',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => EnquirePackages())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15, right: 5),
                    child: Column(
                      children: [
                        SizedBox(
                            height: 40,
                            width: 120,
                            child: Card(
                                color: Color.fromARGB(255, 166, 206, 57),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                    color: Color.fromARGB(255, 166, 206, 57),
                                    width: 1,
                                  ),
                                ),
                                child: const Center(
                                  child: Text("ENQUIRE NOW",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white)),
                                )))
                      ],
                    ),
                  ),
                )
              ]),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 10, 10),
          child: Text(
              "This is the most extensive package offered at NM Medical. It includes the Platinum Plane + Cardiac CT + Whole Body MRI + Cancer Markers, providing comprehensive clinical assessment from head-to-toe.",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
        ),
        const Divider(indent: 10, endIndent: 10, thickness: 1),
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text("Pathology Tests",
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
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("CBC + ESR")
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
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Blood Sugar (Fasting)")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Blood Sugar (PP / PG)")
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
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("SGOT")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("SGPT")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("GGPT")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Bilirubin")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Alkaline Phosphatase")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Proteins (Albumin, Gloubbin, A/G Ratio)")
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
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("LDH")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Triglycerides")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Cholesterol")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("HDL-Cholesterol")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("LDL-Cholesterol")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("VLDL-Cholesterol")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("LDL/HDL Ratio")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Total Cholesterol/HDL Ratio")
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
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Urea")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Creatinine")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Uric Acid")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Electrolytes")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Calcium")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Thyroid Panel(T3, T4, TSH)")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Urine Routine")
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
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Physical Examination")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Dental Checkup")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Eye Checkup")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Gynaecological Exammination**")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Diet & Nutrition Counselling")
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
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Chest X-Ray (Digital)")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("E.C.G. (12 Lead)")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Sonography Abdomen & Pelvis")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Stress Test")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Pap Smear**")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("2D Echo*")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Mammography**")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Dexa Bone Densitometry")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Body Fat Analysis")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Spirometry")
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
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Glycosylated Haemoglobin")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Vitamin D & Vitamin B12")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Genetic Panel Cardiac Risk")
            ],
          ),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Cancer Risk Marker",
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
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("PSA for Prostate Cancer*")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("CA 125 for Ovarian Cancer**")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Carotid Colour Doppler")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("CT Calcium Scoring")
            ],
          ),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Coronary CT Angio or MRI Whole Spine",
              style: TextStyle(
                  color: Color.fromARGB(255, 187, 42, 34),
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Non-Invasive MRI Renal Angio",
              style: TextStyle(
                  color: Color.fromARGB(255, 187, 42, 34),
                  fontSize: 16,
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Whole Body MRI Screening",
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
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Brain")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Neck")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Chest")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Whole Spine")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Abdominal Organ")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Lower Limbs")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Joints")
            ],
          ),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Cancer Markers Profile",
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
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Liver")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Pancreas")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Breast")
            ],
          ),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Food Allergy Test",
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
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Rice")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Chick Pea")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Peanut")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Soyabean")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Tomato")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Spinach")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Cabbage")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Paprika")
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
              child: SizedBox(
                  height: 40,
                  width: 180,
                  child: Card(
                      color: const Color.fromARGB(255, 237, 28, 36),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text("COMPARE PACKAGE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)))))),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
          child: Text("Optional Add-Ons",
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
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("CT Virtual Colonoscopy")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("CT Scan of Lungs (for Smokers)")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Respiratory Allergy Panel")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Comprehensive Allergy Panel (Mini)")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Comprehensive Allergy Panel (Maxi)")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/bullet-icons.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text("Genetic Testing")
            ],
          ),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
