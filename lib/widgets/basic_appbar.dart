import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/gallery.dart';
import 'package:nmmedical/widgets/location.dart';
import '/widgets/search_widget.dart';
import 'app_drawer.dart';
import 'cart_widget.dart';

AppBar BasicAppbar(context) {
  return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Container(
              height: 50.0,
              width: 60.0,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/nm-logo.png"),
                      fit: BoxFit.fitHeight)),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => searchwidget()));
            },
            child: SizedBox(
                height: 27,
                width: 25,
                child: Icon(
                  Icons.search_outlined,
                  size: 28,
                  color: Color.fromARGB(255, 77, 72, 72),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartWidget()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 3.0, right: 5),
                child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Color.fromARGB(255, 77, 72, 72),
                    )),
              ),
            ),
          ),
          Builder(
              builder: (context) => InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: SizedBox(
                      height: 24,
                      width: 19,
                      child: ImageIcon(
                        AssetImage("assets/appbar/user-profile.png"),
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  })),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => loCaTiOn()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: SizedBox(
                  height: 20,
                  width: 20,
                  child: ImageIcon(
                    AssetImage("assets/appbar/location.png"),
                    color: Colors.black87,
                  )),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => gAlLeRy()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: SizedBox(
                  height: 23,
                  width: 18,
                  child: ImageIcon(
                    AssetImage("assets/appbar/gallery.png"),
                    color: Colors.black87,
                  )),
            ),
          ),
        ],
      ),
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: ImageIcon(
              AssetImage("assets/appbar/menu-icon.png"),
              color: Color.fromARGB(255, 187, 42, 34),
            ),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
// tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        ),
      ]);
}
