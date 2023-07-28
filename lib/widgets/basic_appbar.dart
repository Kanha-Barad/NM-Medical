import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/gallery.dart';
import 'package:nmmedical/widgets/location.dart';
import 'package:nmmedical/widgets/search_widget.dart';

import 'cart_widget.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarImg;
  final String teSTCarT;

  BasicAppbar(this.appBarImg, this.teSTCarT);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            child: SizedBox(
                width: 54,height: 54,
                child: SvgPicture.asset("assets/images/nm-logo.svg")),
          ),
          if (appBarImg == "HM")
            Padding(
              padding: const EdgeInsets.only(left: 1, bottom: 2),
              child: SizedBox(
                  width: 54,height: 40,
                  child: SvgPicture.asset("assets/images/health-360-logo.svg")),
            ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => searchwidget()),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 14.0),
              child: SvgPicture.asset("assets/header-icons/search.svg"),
            ),
          ),
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
                Scaffold.of(context).openDrawer(); // Open the Scaffold's drawer
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
              Scaffold.of(context).openEndDrawer(); // Open the end drawer
            },
          ),
        ),
      ],
    );
  }
}



 // Padding(
                  //   padding: EdgeInsets.only(left: 5),
                  //   child: InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => const CartWidget()));
                  //     },
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(left: 3.0, right: 5),
                  //       child: SizedBox(
                  //           height: 25,
                  //           width: 25,
                  //           child: Icon(
                  //             Icons.shopping_cart_outlined,
                  //             color: Color.fromARGB(255, 77, 72, 72),
                  //           )),
                  //     ),
                  //   ),
                  // ),