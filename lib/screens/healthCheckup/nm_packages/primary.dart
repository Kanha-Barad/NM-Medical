import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/comparepackages.dart';
import 'package:nmmedical/widgets/whatsappmessage.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/bottom_navigation.dart';
import '../../../widgets/userdrawer.dart';

class PrimaryPackageDetails extends StatefulWidget {
  @override
  State<PrimaryPackageDetails> createState() => _PrimaryPackageDetailsState();
}

final value = NumberFormat("#,##0", "en_US");

class _PrimaryPackageDetailsState extends State<PrimaryPackageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(context),
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
                              AssetImage("assets/nmpackages/primary-title.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(" PRIMARY",
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
                      child: Text("Primary Investment",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 2, 0, 6),
                      child: Text('\u{20B9} ${value.format(3500)}',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                    )
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 5),
                  child: Column(
                    children: [
                      SizedBox(
                          height: 40,
                          width: 100,
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
                                child: Text("BUY NOW",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)),
                              )))
                    ],
                  ),
                )
              ]),
            ),
          ),
        ),
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
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
