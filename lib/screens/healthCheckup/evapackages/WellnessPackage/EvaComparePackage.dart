import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../widgets/app_drawer.dart';
import '../../../../widgets/basic_appbar.dart';
import '../../../../widgets/customContainer.dart';
import '../../../../widgets/forMoreInformation.dart';

class EVAComparePackage extends StatefulWidget {
  const EVAComparePackage({Key? key}) : super(key: key);

  @override
  State<EVAComparePackage> createState() => _EVAComparePackageState();
}

final value = NumberFormat("#,##0", "en_US");
final pdfController = PdfController(
  document: PdfDocument.openAsset('assets/compare-packages-brochure.pdf'),
);

class _EVAComparePackageState extends State<EVAComparePackage> {
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
            title: "COMPARE PACKAGES",
            svgAssetPath: "assets/nm-packages/compaire-title.svg",
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
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the radius as needed
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RawScrollbar(
                        thickness: 10,
                        thumbColor: Color.fromARGB(255, 187, 42, 34),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Table(
                                defaultColumnWidth: FixedColumnWidth(200),
                                children: [
                                  TableRow(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 187, 42, 34),
                                        borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(15))),
                                    children: [
                                      Center(
                                        child: ListTile(
                                          title: Text('Packages',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                              )),
                                        ),
                                      ),
                                      investmentTableCell(
                                          '\u{20B9}${value.format(15000)}'),
                                      investmentTableCell(
                                          '\u{20B9}${value.format(30000)}'),
                                      investmentTableCell(
                                          '\u{20B9}${value.format(60000)}'),
                                    ],
                                  ),
                                  TableRow(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1.0,
                                                color: Color(0xFFE8E8E8))),
                                        color:
                                            Color.fromARGB(255, 245, 245, 245)),
                                    children: [
                                      PlanTableCell('', ''),
                                      PlanTableCell(
                                          'assets/images/menu-silver-card.png',
                                          'Silver'),
                                      PlanTableCell(
                                          'assets/images/menu-gold-card.png',
                                          'Gold'),
                                      PlanTableCell(
                                          'assets/images/meun-platinum-card.png',
                                          'Platinum'),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Routine Blood Tests',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'CBC + ESR',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'Blood Sugar (Fasting)',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Diabetic Profile',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'Fasting Blood Sugar',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'PP / PG Sugar',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'HBA1C',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Liver Profile',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'SGOT / SGPT / GGTP',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'Alkaline Phosphatase Bilirubin',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Albumin / Globulin / A/G Ratio',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Cardiac Profile',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'Triglycerides',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'Cholesterol',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'HDL / LDL / VLDL',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Renal Profile',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'Urea, Creatinine',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'Uric Acid',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Urine Routine',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Electrolytes',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Specialised Blood Tests',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Cancer Markers',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      SizedBox(),
                                      SizedBox(),
                                      SizedBox(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Renal Profile',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'CA 15.3 for Breast Cancer',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'CA 125 for Ovarian Cancer',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Pap Smear and HPV Cervical Cancer',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Beta HCG for Stomach Cancer',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'AFP for Liver Cancer',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'CA 19.9 for Pancreatic Cancer',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'CEA for Colon Cancer',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Thyroid Profile',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'Cancer Markers',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      SizedBox(),
                                      SizedBox(),
                                      SizedBox(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'T3, T4, TSH',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Vitamin D',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Vitamin B12',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'Iron Studies',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Hormonal Studies',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      SizedBox(),
                                      SizedBox(),
                                      SizedBox(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'FSH, LH, Prolactin, Progesterone',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'LDH',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Diagnostic Tests',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'ECG',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'Abdomen & Pelvic Sonography',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Pelvic Colour Doppler',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Carotid Colour Doppler',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          '3D Digital Mammogram with Tomosynthesis',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Sonomammography',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'DEXA Hip, Spine, Forearm',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Whole body fat Analysis',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: '3T MRI',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'Brain',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      CrossIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'Neck',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      CrossIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Abdomen & Pelvis',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      CrossIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Whole Spine Screening',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      CrossIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                      decoration: BoxDecoration(
                                          border: Border.symmetric(
                                              horizontal: BorderSide(
                                                  width: 1.0,
                                                  color: Color(0xFFE8E8E8))),
                                          color: Color.fromARGB(
                                              255, 245, 245, 245)),
                                      children: [
                                        textHeader(
                                          headerText: 'Consultations',
                                        ),
                                        SizedBox(),
                                        SizedBox(),
                                        SizedBox(),
                                      ]),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 12),
                                        child: Text(
                                          'Gynaecologist Consultation from our expert panel (Optional)',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      TickIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8),
                                        child: Text(
                                          'Skin / Cosmetics Consultation',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      CrossIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                      CustomTableCellWithDivider(),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 8, bottom: 6),
                                        child: Text(
                                          'Lifestyle Counseling',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      CrossIcon(),
                                      TickIcon(),
                                      TickIcon(),
                                    ],
                                  ),
                                  // Add more TableRows as needed
                                ],
                              ),

                              // ... Your other widgets ...
                            ],
                          ),
                        ),
                      ),
                      Divider(indent: 10, endIndent: 10, thickness: 1),
                      FormoreInformation(context, "")
                    ],
                  ),
                ),
              )
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}

Widget investmentTableCell(String value) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(2, 8, 14, 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(
              color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
        ),
        Card(
          elevation: 0,
          color: Color.fromARGB(255, 187, 42, 34),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.white, width: 1)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
            child: Text(
              'Enquire Now',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget PlanTableCell(String backgroundImage, String value,
    {bool isHeader = false}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(12, 10, 14, 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (backgroundImage.isNotEmpty) // Check if backgroundImage is not empty
          SizedBox(
            width: 50,
            height: 32,
            child: Image.asset(backgroundImage),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 3.0, left: 2),
          child: Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget TickIcon() {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/tick.png",
          height: 24,
          width: 24,
          // color: Colors.green, // Add color if needed
        ),
      ],
    ),
  );
}

Widget CrossIcon() {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/cross.png",
          height: 24,
          width: 24,
          // color: Colors.green, // Add color if needed
        ),
      ],
    ),
  );
}

class textHeader extends StatelessWidget {
  final String headerText;

  const textHeader({required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Text(headerText,
                style: TextStyle(
                    color: Color.fromARGB(255, 187, 42, 34),
                    fontSize: 16,
                    fontWeight: FontWeight.w600))),
      ],
    );
  }
}

Widget customDivider = Divider(
  height: 1,
  color: Colors.grey, // Adjust the color of the divider as needed
);

class CustomTableCellWithDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Row(
        children: [
          Expanded(
            child: Divider(
              height: 16,
              color: Color.fromARGB(255, 198, 197, 197),
            ),
          ),
        ],
      ),
    );
  }
}
