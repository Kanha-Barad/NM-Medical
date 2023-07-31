import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/userdrawer.dart';
import '../../../widgets/forMOreInFormationWIdget.dart';
import '../../../widgets/whatsappmessage.dart';

class ComparePackage extends StatefulWidget {
  const ComparePackage({Key? key}) : super(key: key);

  @override
  State<ComparePackage> createState() => _ComparePackageState();
}

final value = NumberFormat("#,##0", "en_US");
final pdfController = PdfController(
  document: PdfDocument.openAsset('assets/compare-packages-brochure.pdf'),
);

class _ComparePackageState extends State<ComparePackage> {
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
          title: "COMPARE PACKAGES",
          svgAssetPath: "assets/nm-packages/compaire-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
          child: RawScrollbar(
            thickness: 2,
            thumbColor: Color.fromARGB(255, 187, 42, 34),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Table(
                    defaultColumnWidth: FixedColumnWidth(201),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 187, 42, 34),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0, left: 12),
                            child: Text('Investment',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          ),
                          investmentTableCell('\u{20B9}${value.format(3500)}'),
                          investmentTableCell('\u{20B9}${value.format(7950)}'),
                          investmentTableCell('\u{20B9}${value.format(10950)}'),
                          investmentTableCell('\u{20B9}${value.format(19000)}'),
                          investmentTableCell('\u{20B9}${value.format(33500)}'),
                          investmentTableCell('\u{20B9}${value.format(64500)}'),
                          investmentTableCell('\u{20B9}${value.format(8000)}'),
                        ],
                      ),
                      TableRow(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 245, 245, 245)),
                        children: [
                          PlanTableCell(
                            'NM Health Plan',
                          ),
                          PlanTableCell('Primary'),
                          PlanTableCell('Gold'),
                          PlanTableCell('Gold Plus'),
                          PlanTableCell('Platinum'),
                          PlanTableCell('Diamond'),
                          PlanTableCell('360 Deluxe'),
                          PlanTableCell('Senior Citizen'),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'CBC + ESR',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                        ],
                      ),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 245, 245)),
                          children: [
                            textHeader(
                              headerText: 'Tests for Diabetes',
                            ),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                          ]),

                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 8),
                            child: Text(
                              'Blood Sugar (Fasting)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),

                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 6),
                            child: Text(
                              'Blood Sugar (PP / PG)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                        ],
                      ),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 245, 245)),
                          children: [
                            textHeader(
                              headerText: 'Tests for Liver Disease',
                            ),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                          ]),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'SGOT',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'SGPT',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'GGPT',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Bilirubin',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 6),
                            child: Text(
                              'Alkaline Phosphatase',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 6),
                            child: Text(
                              'Proteins (Albumin, Gloubllin, A/G Ratio)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                        ],
                      ),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 245, 245)),
                          children: [
                            textHeader(
                              headerText: 'Tests for Heart Disease',
                            ),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                          ]),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 8),
                            child: Text(
                              'Triglycerides',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Cholesterol',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'HDL-Cholesterol',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'LDL-Cholesterol',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'VLDL-Cholesterol',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'LDL/HDL Ratio',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 6),
                            child: Text(
                              'Total Cholesterol/HDL Ratio',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                        ],
                      ),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 245, 245)),
                          children: [
                            textHeader(
                              headerText: 'Tests for Kidney Disease',
                            ),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                          ]),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Urea',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Creatinine',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Uric Acid',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Urine Routine',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Calcium',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Electrolytes',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                        ],
                      ),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 245, 245)),
                          children: [
                            textHeader(
                              headerText: 'Consultations',
                            ),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                          ]),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Physical Examination',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Dental Checkup',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Eye Checkup',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Gynaecological Exammination**',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Diet & Nutrition Counselling',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 245, 245)),
                          children: [
                            textHeader(
                              headerText: 'Diagnostic Tests',
                            ),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                          ]),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 8),
                            child: Text(
                              'Chest X-Ray (Digital)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'E.C.G. (12 Lead)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 6),
                            child: Text(
                              'Sonography Abdomen & Pelvis',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Stress Test',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Pap Smear**',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              '2D Echo*',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Mammography**',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 6),
                            child: Text(
                              'Dexa Bone Densitometry',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Body Fat Analysis',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Spirometry',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 245, 245, 245)),
                          children: [
                            textHeader(
                              headerText: 'Specialized Investigations',
                            ),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                            SizedBox(),
                          ]),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 8),
                            child: Text(
                              'Thyroid Profile (T3, T4, TSH)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Hepatitis B',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 0),
                            child: Text(
                              'Vitamin D',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Vitamin B12',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 6),
                            child: Text(
                              'PSA for Prostate Cancer*',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 6),
                            child: Text(
                              'CA 125 for Ovarian Cancer**',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 6),
                            child: Text(
                              'Carotid Colour Doppler',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 5),
                            child: Text(
                              'MRI Whole Spine / CT Coronary Angio',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Glycosylated Haemoglobin',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
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
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Allergy Screening Test',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Renal Angio CT',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Whole body MRI',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Veg food allergy Panel',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Liver Markers',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 8),
                            child: Text(
                              'Cancer Markers Panel',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Troponin I Cardiac Screen',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                          TickIcon(),
                          CrossIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0, top: 7),
                            child: Text(
                              'Genetic Panel Cardiac',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          CrossIcon(),
                          TickIcon(),
                          TickIcon(),
                          CrossIcon(),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                          CustomTableCellWithDivider(),
                        ],
                      ),
                      // Add more TableRows as needed
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 6, 0, 10),
                    child: Text("*for Males only   |   **for Females only",
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  InkWell(
                    onTap: () {
                      // PdfView(
                      //   controller: pdfController,
                      // );
                      launch(
                          'https://dev.imageonline.co.in/nm-medical-mobile-app/ver-5/images/pdf/compare-packages-brochure.pdf');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                            color: const Color.fromARGB(255, 237, 28, 36),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 13, 20, 13),
                              child: Text("COMPARE PACKAGES BOOKLET",
                                  style: TextStyle(
                                    fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                            )),
                      ],
                    ),
                  ),
                  Divider(indent: 10, endIndent: 10, thickness: 1),
                  WhatsApp(context)
                  // ... Your other widgets ...
                ],
              ),
            ),
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
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

Widget PlanTableCell(String value, {bool isHeader = false}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(12, 8, 14, 8),
    child: Text(
      value,
      style: TextStyle(
        color: Color.fromARGB(255, 187, 42, 34),
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}

Widget TickIcon() {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, top: 4.0, bottom: 4.0),
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
    padding: const EdgeInsets.only(left: 12.0, top: 4.0, bottom: 4.0),
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
            padding: const EdgeInsets.fromLTRB(12, 6, 0, 6),
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
