import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/customContainer.dart';
import '../widgets/userdrawer.dart';

class DonwloadReport extends StatefulWidget {
  @override
  State<DonwloadReport> createState() => _DonwloadReportState();
}

class _DonwloadReportState extends State<DonwloadReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("",""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child: Column(children: [
        CustomContainerBar(
          title: "REPORTS",
          svgAssetPath: "assets/images/download-report.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SvgPicture.asset("assets/images/medical-report.svg"),
          ),
          title: Text("Blood Cholesterol Test",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text("10/09/2022",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          trailing: SvgPicture.asset("assets/images/download-icon.svg"),
        ),
        Divider(indent: 14, endIndent: 14, thickness: 1),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SvgPicture.asset("assets/images/medical-report.svg"),
          ),
          title: Text("Blood Cholesterol Test",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text("10/09/2022",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          trailing: SvgPicture.asset("assets/images/download-icon.svg"),
        ),
        Divider(indent: 14, endIndent: 14, thickness: 1),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SvgPicture.asset("assets/images/medical-report.svg"),
          ),
          title: Text("Blood Cholesterol Test",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text("10/09/2022",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          trailing: SvgPicture.asset("assets/images/download-icon.svg"),
        ),
        Divider(indent: 14, endIndent: 14, thickness: 1),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SvgPicture.asset("assets/images/medical-report.svg"),
          ),
          title: Text("Blood Cholesterol Test",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text("10/09/2022",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          trailing: SvgPicture.asset("assets/images/download-icon.svg"),
        ),
        Divider(indent: 14, endIndent: 14, thickness: 1),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SvgPicture.asset("assets/images/medical-report.svg"),
          ),
          title: Text("Blood Cholesterol Test",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text("10/09/2022",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          trailing: SvgPicture.asset("assets/images/download-icon.svg"),
        ),
        Divider(indent: 14, endIndent: 14, thickness: 1),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SvgPicture.asset("assets/images/medical-report.svg"),
          ),
          title: Text("Blood Cholesterol Test",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text("10/09/2022",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          trailing: SvgPicture.asset("assets/images/download-icon.svg"),
        ),
        Divider(indent: 14, endIndent: 14, thickness: 1),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: SvgPicture.asset("assets/images/medical-report.svg"),
          ),
          title: Text("Blood Cholesterol Test",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600)),
          subtitle: Text("10/09/2022",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
          trailing: SvgPicture.asset("assets/images/download-icon.svg"),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
