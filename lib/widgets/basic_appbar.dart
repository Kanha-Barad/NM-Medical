import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/nm_home.dart';
import 'package:nmmedical/widgets/gallery.dart';
import 'package:nmmedical/widgets/location.dart';
import 'package:nmmedical/widgets/search_widget.dart';

import 'cart_widget.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarImg;
  final String teSTCarT;
  final VoidCallback onUserProfileIconTap;
  final VoidCallback onMenuIconTap; // New callback for menu icon tap

  BasicAppbar(this.appBarImg, this.teSTCarT,
      {required this.onUserProfileIconTap, required this.onMenuIconTap});

  @override
  Size get preferredSize => Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      // leading: Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 1, bottom: 1),
      //       child: SizedBox(
      //           width: 54,
      //           child: SvgPicture.asset("assets/images/nm-logo.svg")),
      //     ),
      //     if (appBarImg == "HM")
      //       Padding(
      //         padding: const EdgeInsets.only(left: 1, bottom: 2),
      //         child: SizedBox(
      //             width: 75,
      //             child: SvgPicture.asset("assets/images/health-360-logo.svg")),
      //       ),
      //   ],
      // ),
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, bottom: 1),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => NMHome()));
              },
              child: SizedBox(
                  width: 64,
                  height: 64,
                  child: SvgPicture.asset("assets/images/nm-logo.svg")),
            ),
          ),
          if (appBarImg == "HM")
            Padding(
              padding: const EdgeInsets.only(left: 3, top: 8),
              child: SizedBox(
                  width: 54,
                  height: 43,
                  child: SvgPicture.asset("assets/images/health-360-logo.svg")),
            ),
          Spacer(),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => searchwidget()),
          //     );
          //   },
          //   child: Padding(
          //     padding: const EdgeInsets.only(right: 14.0),
          //     child: SvgPicture.asset("assets/header-icons/search.svg"),
          //   ),
          // ),
          (teSTCarT == "TC")
              ? InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartWidget()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: SvgPicture.asset(
                        "assets/header-icons/shopping-cart.svg"),
                  ),
                )
              : Container(),
          Builder(
            builder: (context) => InkWell(
              onTap: () {
                onUserProfileIconTap();
                Scaffold.of(context)
                    .openEndDrawer(); // Open the Scaffold's drawer
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 14.0),
                child: SvgPicture.asset("assets/header-icons/user-profile.svg"),
              ),
            ),
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loCaTiOn()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: SvgPicture.asset("assets/header-icons/location.svg"),
              )),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => gAlLeRy()),
                );
              },
              child: SvgPicture.asset("assets/header-icons/gallery.svg")),
        ],
      ),
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: SvgPicture.asset("assets/header-icons/menu-icon.svg"),
            onPressed: () {
              onMenuIconTap();
              Scaffold.of(context).openEndDrawer(); // Open the end drawer
            },
          ),
        ),
      ],
    );
  }
}
