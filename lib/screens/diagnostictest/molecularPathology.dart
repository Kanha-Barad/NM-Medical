import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/forMoreInformation.dart';

class MolecularPathology extends StatefulWidget {
  const MolecularPathology({Key? key}) : super(key: key);

  @override
  State<MolecularPathology> createState() => _MolecularPathologyState();
}

class _MolecularPathologyState extends State<MolecularPathology> {
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
          title: "MOLECULAR PATHOLOGY",
          svgAssetPath: "assets/diagnostic-test/molecular-pathology-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "Infectious diseases are caused by infectious organisms either viral, Bacterial, fungal or Parasitic.",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w400)),
        ),
        ListTile(
          leading:
              SvgPicture.asset("assets/diagnostic-test/sars-cov2-icon.svg"),
          title: Text("Immuno Supression",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading:
              SvgPicture.asset("assets/diagnostic-test/respirastat-icon.svg"),
          title: Text("RespiraSTAT (Biofire)",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading:
              SvgPicture.asset("assets/diagnostic-test/gastrostat-icon.svg"),
          title: Text("GastroSTAT (Biofire)",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading: SvgPicture.asset(
              "assets/diagnostic-test/influenza-panel-icon.svg"),
          title: Text("Influenza Panel",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading: SvgPicture.asset(
              "assets/diagnostic-test/tropical-fever-panel-icon.svg"),
          title: Text("Tropical Fever Panel",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading:
              SvgPicture.asset("assets/diagnostic-test/torch-pcr-icon.svg"),
          title: Text("Torch PCR",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading:
              SvgPicture.asset("assets/diagnostic-test/prostate-cancer.svg"),
          title: Text("STD / Urethritis",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading:
              SvgPicture.asset("assets/diagnostic-test/torch-pcr-icon2.svg"),
          title: Text("Swine Flu (H1N1)",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading:
              SvgPicture.asset("assets/diagnostic-test/neurology-icon-nav.svg"),
          title: Text("Meningitis",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(15, 20, 0, 0),
          child: Text("PRO Genome - Genetics for Health and Wellness",
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 187, 42, 34),
                  fontWeight: FontWeight.w700)),
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: SvgPicture.asset("assets/diagnostic-test/medical-icon.svg"),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16),
            child: Text("Medical",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Neurology, Cardiology, Diabetes & Obesity, Orthopaedics & Sports,",
                    style: TextStyle(fontSize: 14)),
                Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Dermatology : Skin & Hair, Gastroenterology",
                        style: TextStyle(fontSize: 14))),
              ],
            ),
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child:
                SvgPicture.asset("assets/diagnostic-test/reproductive-img.svg"),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16),
            child: Text("Reproductive",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16),
            child: Text(
                "NIPT, Carrier Screening, Bad Obstetric History, Recurrent Miscarriage, IVF Response, Preimplantation Genetic Response",
                style: TextStyle(fontSize: 14)),
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SvgPicture.asset("assets/diagnostic-test/oncology-img.svg"),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 29),
            child: Text("Oncology",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 29),
            child: Text(
                "Breast & Ovarian Cancer, Thyroid Cancer, Lung Cancer, Colorectal Cancer, Cancer Hotspots, Myeloid Panels, Liquid Biopsy",
                style: TextStyle(fontSize: 14)),
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        ListTile(
          leading: SvgPicture.asset("assets/diagnostic-test/wellness-img.svg"),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text("Wellness",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
                "Health Predisposition Cancer Risk, Diet & Nutrition, Fitness & Sports, Hair & Skin, Healthy Child",
                style: TextStyle(
                  fontSize: 14,
                )),
          ),
        ),

        // Row(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(left: 15),
        //       child: SvgPicture.asset("assets/diagnostic-test/wellness-img.svg"),
        //     ),
        //     Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Padding(
        //           padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
        //           child: Text("Wellness",
        //               style: TextStyle(
        //                   fontSize: 14,
        //                   color: Colors.black87,
        //                   fontWeight: FontWeight.w500)),
        //         ),
        //         Padding(
        //           padding: EdgeInsets.fromLTRB(10, 12, 0, 4),
        //           child: Text(
        //               "Health Predisposition Cancer Risk, Diet & Nutrition,\nFitness & Sports, Hair & Skin, Healthy Child",
        //               style: TextStyle(
        //                   fontSize: 12,
        //                   color: Colors.black87,
        //                   fontWeight: FontWeight.w400)),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
