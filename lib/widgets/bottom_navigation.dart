import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/download_reports.dart';
import 'package:nmmedical/widgets/bottom_navigation/loyalityprogram.dart';
import 'package:nmmedical/widgets/bottom_navigation/promotion.dart';
import 'package:nmmedical/widgets/userdrawer/dashboard.dart';

import '../screens/nm_home.dart';

class AllBottomNavigationBar extends StatefulWidget {
  @override
  State<AllBottomNavigationBar> createState() => _AllBottomNavigationBarState();
}

class _AllBottomNavigationBarState extends State<AllBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      child: Row(
        children: [
          Expanded(
            child: buildNavItem(
              icon: "assets/footer-menu-icons/home-icon.svg",
              text: "Home",
              color: const Color.fromARGB(255, 187, 43, 34),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NMHome()),
                );
              },
            ),
          ),
          Expanded(
            child: buildNavItem(
              icon: "assets/footer-menu-icons/report-icon.svg",
              text: "Report",
              color: const Color.fromARGB(255, 193, 63, 55),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DonwloadReport()),
                );
              },
            ),
          ),
          Expanded(
            child: buildNavItem(
              icon: "assets/footer-menu-icons/loyalty-program-icon.svg",
              text: "Loyalty Program",
              color: const Color.fromARGB(255, 201, 85, 78),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoYALityPROgraM()),
                );
              },
            ),
          ),
          Expanded(
            child: buildNavItem(
              icon: "assets/footer-menu-icons/promotion-icon.svg",
              text: "Promotion",
              color: const Color.fromARGB(255, 207, 104, 99),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PRomoTioN()),
                );
              },
            ),
          ),
          Expanded(
            child: buildNavItem(
              icon: "assets/footer-menu-icons/dashboard-2.svg",
              text: "Dashboard",
              color: const Color.fromARGB(255, 214, 127, 122),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildNavItem({
    required String icon,
    required String text,
    required Color color,
    required void Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: color,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Align items vertically at the center
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: SvgPicture.asset(
                icon,
                width: 23,
                height: 24,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: 2.0), // Adjust the top padding as needed
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
