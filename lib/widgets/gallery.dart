import 'package:flutter/material.dart';
import './userdrawer.dart';

import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'bottom_navigation.dart';

class gAlLeRy extends StatefulWidget {
  const gAlLeRy({Key? key}) : super(key: key);

  @override
  State<gAlLeRy> createState() => _gAlLeRyState();
}

class _gAlLeRyState extends State<gAlLeRy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(context),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 187, 42, 34),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Icon(
                      Icons.photo_album_outlined,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("GALLERY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
            ])),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 30, 12, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(Icons.fort_outlined,
                      size: 28, color: Color.fromARGB(255, 187, 42, 34)),
                  Text(
                    'Mumbai',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.warehouse_outlined,
                      size: 28, color: Color.fromARGB(255, 187, 42, 34)),
                  Text(
                    'Pune',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.temple_buddhist_outlined,
                      size: 30, color: Color.fromARGB(255, 187, 42, 34)),
                  Text(
                    'Bangalore',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
