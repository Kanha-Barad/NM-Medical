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
          title: "COMPARE PACKAGES",
          svgAssetPath: "assets/nm-packages/compaire-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
          child: Card(
              child: RawScrollbar(
            thickness: 2,
            thumbColor: Color.fromARGB(255, 187, 42, 34),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: Color.fromARGB(255, 187, 42, 34),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15.0, 12, 15, 12),
                      child: Row(
                        children: [
                          Text(
                            'Investment',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\u{20B9}${value.format(3500)}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                                Card(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Colors.white, width: 1.5)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\u{20B9}${value.format(7950)}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                                Card(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Colors.white, width: 1.5)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\u{20B9}${value.format(10950)}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                                Card(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Colors.white, width: 1.5)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\u{20B9}${value.format(19000)}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                                Card(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Colors.white, width: 1.5)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\u{20B9}${value.format(33500)}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                                Card(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Colors.white, width: 1.5)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\u{20B9}${value.format(64500)}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                                Card(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Colors.white, width: 1.5)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('\u{20B9}${value.format(8000)}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                                Card(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Colors.white, width: 1.5)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(20, 5, 20, 5),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      color: Color.fromARGB(255, 225, 225, 225),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 12, 5, 12),
                          child: Row(children: [
                            Text(
                              'NM Health Plan',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: Text(
                                'Primary',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 108.0),
                              child: Text(
                                'Gold',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 128.0),
                              child: Text(
                                'Gold Plus',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 96.0),
                              child: Text(
                                'Platinum',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100.0),
                              child: Text(
                                'Diamond',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 99.0),
                              child: Text(
                                '360 Deluxe',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 82.0, right: 49),
                              child: Text(
                                'Senior Citizen',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ]))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'CBC + ESR',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 64.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 140.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  Container(
                      width: MediaQuery.of(context).size.width * 3.22,
                      color: Color.fromARGB(255, 225, 225, 225),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 5, 8),
                          child: Text('Tests for Diabetes',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 10, 6),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Blood Sugar\n(Fasting)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 57.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 140.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 6, 10, 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Blood Sugar\n(PP / PG)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 58.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 140.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  Container(
                      width: MediaQuery.of(context).size.width * 3.22,
                      color: Color.fromARGB(255, 225, 225, 225),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 5, 8),
                          child: Text('Tests for Liver Disease',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 12, 10, 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SGOT',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 96.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 140.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SGPT',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 97.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'GGPT',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 97.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 135.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Billirubin',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 139.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Alkaline \nPhosphatase',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 54.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 139.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Proteins \n(Albumin, Gloubllin, \nA/G Ratio)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  Container(
                      width: MediaQuery.of(context).size.width * 3.22,
                      color: Color.fromARGB(255, 225, 225, 225),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 5, 8),
                          child: Text('Tests for Heart Disease',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 12, 10, 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Triglycerides',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 56.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cholesterol',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 65.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'HDL-Cholesterol',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 33.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'LDL-Cholesterol',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 36.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'VLDL-Cholesterol',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 28.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'LDL/HDL Ratio',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 46.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total\nCholesterol/HDL\nRatio	',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 36.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  Container(
                      width: MediaQuery.of(context).size.width * 3.22,
                      color: Color.fromARGB(255, 225, 225, 225),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 5, 8),
                          child: Text('Tests for Kidney Disease',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 12, 10, 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Urea',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 110.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 134.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 135.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 135.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Creatinine',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 76.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 134.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 135.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 135.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Uric Acid',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 84.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 134.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 135.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 135.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Urine Routine',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 56.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 134.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 137.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 135.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 135.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Calcium',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 90.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 133.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 138.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Electrolytes',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  Container(
                      width: MediaQuery.of(context).size.width * 3.22,
                      color: Color.fromARGB(255, 225, 225, 225),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 5, 8),
                          child: Text('Consultations',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 12, 10, 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Physical\nExamination',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 66.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dental Checkup',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 42.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Eye Checkup',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Gynaecological\nExammination**',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 42),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Diet & Nutrition\nCounselling',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 46),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  Container(
                      width: MediaQuery.of(context).size.width * 3.22,
                      color: Color.fromARGB(255, 225, 225, 225),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 5, 8),
                          child: Text('Diagnostic Tests',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 12, 10, 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Chest X-Ray\n(Digital)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 64.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'E.C.G. (12 Lead)',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 44.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sonography\nAbdomen &\nPelvis	',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Stress Test',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 74),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pap Smear**',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 65),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '2D Echo*',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 86.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mammography**',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Dexa Bone\nDensitometry	',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 58.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Body Fat Analysis',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 36.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Spirometry',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 76.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  Container(
                      width: MediaQuery.of(context).size.width * 3.22,
                      color: Color.fromARGB(255, 225, 225, 225),
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 5, 8),
                          child: Text('Specialized Investigations',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 12, 10, 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Thyroid Profile\n(T3, T4, TSH)	',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 54),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 132.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hepatitis B',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 76),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Vitamin D',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 85.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Vitamin B12',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 72.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'PSA for Prostate\nCancer*',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 44.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'CA 125 for\nOvarian\nCancer**',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 81.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Carotid Colour\nDoppler	',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 56.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'MRI Whole Spine\n/ CT Coronary\nAngio',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 132.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/cross.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 136.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 136.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Glycosylated\nHaemoglobin	',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 78.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 68.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 65.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 73.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 74.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Allergy Screening\nTest',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 31.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 78.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 65.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 73.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 74.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 12, 10, 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Renal Angio CT',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 43.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 78.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 65.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 73.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 74.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Whole body MRI',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 37),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 78.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 65.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 73.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 74.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Veg food allergy\nPanel',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 38.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 78.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 65.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 73.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 74.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Liver Markers',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 52),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 78.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 65.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 73.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 74.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cancer Markers\nPanel',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 78.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 65.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 73.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 74.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Troponin I\nCardiac Screen	',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 78.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 68.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 65.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 73.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 75.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 74.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 3.22,
                      child: Divider(
                        indent: 10,
                        endIndent: 10,
                        thickness: 1.2,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 7, 10, 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Genetic Panel\nCardiac',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 48.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 78.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 68.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                                padding: const EdgeInsets.only(left: 65.0),
                                child: Image.asset("assets/images/cross.png")),
                            Padding(
                              padding: const EdgeInsets.only(left: 73.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 75.0),
                              child: Image.asset("assets/images/tick.png"),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 74.0),
                                child: Image.asset("assets/images/cross.png")),
                          ])),
                ],
              ),
            ),
          )),
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
          child: Center(
              child: SizedBox(
                  height: 40,
                  width: 250,
                  child: Card(
                      color: const Color.fromARGB(255, 237, 28, 36),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text("COMPARE PACKAGES BOOKLET",
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
