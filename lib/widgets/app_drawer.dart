import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/Corporate.dart';
import 'package:nmmedical/screens/Institutional.dart';
import 'package:nmmedical/screens/breast_imaging.dart';
import 'package:nmmedical/screens/cancerAndGenomics.dart';
import 'package:nmmedical/screens/homevisit.dart';

import '../screens/247Support.dart';
import '../screens/Pregnancy.dart';
import '../screens/Upload_Prescription.dart';
import '../screens/diagnostic_tests.dart';
import '../screens/download_reports.dart';
import '../screens/health_checkup.dart';
import '../screens/histopathology.dart';
import 'userdrawer/address.dart';
import 'userdrawer/dashboard.dart';
import 'userdrawer/myenquiry.dart';
import 'userdrawer/profile.dart';

class AppDrawer extends StatefulWidget {
  final bool isUserIconClicked;

  AppDrawer({required this.isUserIconClicked});

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
                  padding: const EdgeInsets.only(right: 12.0, top: 4),
                  child: SvgPicture.asset("assets/images/close-icon.svg"),
                )),
          ],
        ),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homeVisit()));
              },
              leading: SvgPicture.asset("assets/menu-icons/home-visit.svg"),
              title: const Text(
                "Home Visit",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DiagnosticTests("TC")));
              },
              leading:
                  SvgPicture.asset("assets/menu-icons/diagnostic-test.svg"),
              title: const Text(
                "Diagnostic Tests",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HealthCheckUp()));
              },
              leading:
                  SvgPicture.asset("assets/menu-icons/health-check-up.svg"),
              title: const Text(
                "Health Check up",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pregnancy()));
              },
              leading: SvgPicture.asset("assets/menu-icons/pregnancy.svg"),
              title: const Text(
                "Pregnancy",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BreastIMAGinG()));
              },
              leading: SvgPicture.asset("assets/menu-icons/breast-imaging.svg"),
              title: const Text(
                "Breast Imaging",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Histopathology()));
              },
              leading: SvgPicture.asset("assets/menu-icons/histopathology.svg"),
              title: const Text(
                "Histopathology",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CancerAnDGEnomiCS()));
              },
              leading:
                  SvgPicture.asset("assets/menu-icons/cancer-genomics.svg"),
              title: const Text(
                "Cancer & Genomics",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InstiTUTionAL()));
              },
              leading: SvgPicture.asset("assets/menu-icons/institutional.svg"),
              title: const Text(
                "Institutional",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CorPORatE()));
              },
              leading: SvgPicture.asset("assets/menu-icons/corporate.svg"),
              title: const Text(
                "Corporate",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UploadPrescription()));
              },
              leading:
                  SvgPicture.asset("assets/menu-icons/upload-prescription.svg"),
              title: const Text(
                "Upload Prescription",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SuppoRT()));
              },
              leading: SvgPicture.asset("assets/menu-icons/247-support.svg"),
              title: const Text(
                "24/7 Support",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (!widget.isUserIconClicked)
          ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DonwloadReport()));
              },
              leading: SvgPicture.asset(
                  "assets/menu-icons/download-all-reports.svg"),
              title: const Text(
                "Download All Reports",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 187, 43, 34)),
              )),
        if (widget
            .isUserIconClicked) // Show additional items if user icon is clicked
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
            leading:
                SvgPicture.asset("assets/profile-icons/dashboard-icon.svg"),
            title: const Text("Dashboard"),
            textColor: Color.fromARGB(255, 187, 29, 17),
          ),
        if (widget
            .isUserIconClicked) // Show additional items if user icon is clicked
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => pRofilE()));
            },
            leading: SvgPicture.asset("assets/profile-icons/profile-icon.svg"),
            title: const Text("Profile"),
            textColor: Color.fromARGB(255, 187, 29, 17),
          ),
        if (widget
            .isUserIconClicked) // Show additional items if user icon is clicked
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyOrder()));
            },
            leading: SvgPicture.asset("assets/profile-icons/order-icon.svg"),
            title: const Text("My Enquiry"),
            textColor: Color.fromARGB(255, 187, 29, 17),
          ),
        if (widget
            .isUserIconClicked) // Show additional items if user icon is clicked
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Address()));
            },
            leading: SvgPicture.asset("assets/profile-icons/address-icon.svg"),
            title: const Text("Address"),
            textColor: Color.fromARGB(255, 187, 29, 17),
          ),
        if (widget
            .isUserIconClicked) // Show additional items if user icon is clicked
          ListTile(
            onTap: () {},
            leading: SvgPicture.asset("assets/profile-icons/logout-icon.svg"),
            title: const Text("Logout"),
            textColor: Color.fromARGB(255, 187, 29, 17),
          ),
      ]),
    );
  }
}

// Widget buildNavItem({
//   required String icon,
//   required String text,
//   required void Function() onTap,
// }) {
//   return InkWell(
//     onTap: onTap,
//     child: Row(
//       mainAxisAlignment:
//           MainAxisAlignment.center, // Align items vertically at the center
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 3.0),
//           child: SvgPicture.asset(
//             icon,
//           ),
//         ),
//         Padding(
//             padding: const EdgeInsets.only(
//                 left: 2.0), // Adjust the top padding as needed
//             child: FittedBox(
//                 fit: BoxFit.contain,
//                 child: Text(
//                   text,
//                   style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w600,
//                       color: Color.fromARGB(255, 187, 43, 34)),
//                 ))),
//       ],
//     ),
//   );
// }
