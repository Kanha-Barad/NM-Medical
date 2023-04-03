import 'package:flutter/material.dart';

import '../screens/Breast_Imaging.dart';
import '../screens/Pregnancy.dart';
import '../screens/Upload_Prescription.dart';
import '../screens/diagnostic_tests.dart';
import '../screens/download_reports.dart';
import '../screens/health_checkup.dart';
import '../screens/histopathology.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context, true);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: const Icon(Icons.close_rounded,
                      size: 25, color: Color.fromARGB(255, 187, 29, 17)),
                )),
          ],
        ),
        ListTile(
            onTap: () {},
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/home-visit.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Home Visit")),
        ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DiagnosticTests()));
            },
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/diagnostic-tests.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Diagnostic Tests")),
        ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HealthCheckUp()));
            },
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/health-check-up.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Health Check up")),
        ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Pregnancy()));
            },
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/pregnancy.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Pregnancy")),
        ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BreastImaging()));
            },
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/breast-imaging.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Breast Imaging")),
        ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Histopathology()));
            },
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/histopathology.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Histopathology")),
        ListTile(
            onTap: () {},
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/cancer-genomics.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Cancer & Genomics")),
        ListTile(
            onTap: () {},
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/institutional.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Institutional")),
        ListTile(
            onTap: () {},
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/corporate.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Corporate")),
        ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UploadPrescription()));
            },
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image:
                          AssetImage("assets/services/upload-prescription.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Upload Prescription")),
        ListTile(
            onTap: () {},
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/services/247-Support.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("24/7 Support")),
        ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DonwloadReport()));
            },
            leading: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/services/download-all-reports.png"),
                      fit: BoxFit.fill)),
            ),
            title: const Text("Download All Reports")),
      ]),
    );
  }
}
