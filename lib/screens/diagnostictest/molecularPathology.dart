import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/userdrawer.dart';
import '../../widgets/whatsappmessage.dart';

class MolecularPathology extends StatefulWidget {
  const MolecularPathology({Key? key}) : super(key: key);

  @override
  State<MolecularPathology> createState() => _MolecularPathologyState();
}

class _MolecularPathologyState extends State<MolecularPathology> {
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
                child: Image.asset(
                    "assets/diagnostictests/molecular-pathology-title.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("MOLECULAR PATHOLOGY",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
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
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "Infectious diseases are caused by infectious organisms either viral, Bacterial, fungal or Parasitic.",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
        ),
        ListTile(
          leading: Image.asset("assets/diagnostictests/sars-cov2-icon.png"),
          title: Text("Immuno Supression",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading: Image.asset("assets/diagnostictests/respirastat-icon.png"),
          title: Text("RespiraSTAT (Biofire)",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading: Image.asset("assets/diagnostictests/gastrostat-icon.png"),
          title: Text("GastroSTAT (Biofire)",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading:
              Image.asset("assets/diagnostictests/influenza-panel-icon.png"),
          title: Text("Influenza Panel",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading: Image.asset(
              "assets/diagnostictests/tropical-fever-panel-icon.png"),
          title: Text("Tropical Fever Panel",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading: Image.asset("assets/diagnostictests/torch-pcr-icon.png"),
          title: Text("Torch PCR",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading: Image.asset("assets/diagnostictests/prostate-cancer.png"),
          title: Text("STD / Urethritis",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading: Image.asset("assets/diagnostictests/torch-pcr-icon2.png"),
          title: Text("Swine Flu (H1N1)",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          leading: Image.asset("assets/diagnostictests/neurology-icon-nav.png"),
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
            child: Image.asset("assets/diagnostictests/medical-icon.png"),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16),
            child: Text("Medical",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500)),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Neurology, Cardiology, Diabetes & Obesity,\nOrthopaedics & Sports,",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400)),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text("Dermatology : Skin & Hair, Gastroenterology",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400)),
                ),
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
            child: Image.asset("assets/diagnostictests/reproductive-img.png"),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16),
            child: Text("Reproductive",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500)),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "NIPT, Carrier Screening, Bad Obstetric History,\nRecurrent Miscarriage, IVF Response,\nPreimplantation Genetic Response",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400)),
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
            padding: const EdgeInsets.only(left: 16.0),
            child: Image.asset("assets/diagnostictests/oncology-img.png"),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 29),
            child: Text("Oncology",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500)),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Breast & Ovarian Cancer, Thyroid Cancer, Lung Cancer,\nColorectal Cancer, Cancer Hotspots,\nMyeloid Panels, Liquid Biopsy",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400)),
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
          leading: Image.asset("assets/diagnostictests/wellness-img.png"),
          title: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text("Wellness",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500)),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Health Predisposition Cancer Risk, Diet & Nutrition,\nFitness & Sports, Hair & Skin, Healthy Child",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400)),
              ],
            ),
          ),
        ),

        // Row(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.only(left: 15),
        //       child: Image.asset("assets/diagnostictests/wellness-img.png"),
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
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
