import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/gallery.dart';
import 'package:nmmedical/widgets/location.dart';
import 'package:nmmedical/widgets/search_widget.dart';

class BasicAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarImg;

  BasicAppbar(this.appBarImg);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          SizedBox(
            height: 54,
            width: 54,
            child: Image.asset("assets/images/nm-logo.png"),
          ),
          if (appBarImg == "HM") // Use if condition instead of ternary operator
            Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Container(
                height: 50.0,
                width: 60.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/health-360-logo.png"),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
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