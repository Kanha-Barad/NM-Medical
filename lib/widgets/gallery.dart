import 'package:flutter/material.dart';
import './userdrawer.dart';

import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'bottom_navigation.dart';
import 'locations/locationbangalore.dart';
import 'locations/locationmumbai.dart';
import 'locations/locationpune.dart';

class gAlLeRy extends StatefulWidget {
  const gAlLeRy({Key? key}) : super(key: key);

  @override
  State<gAlLeRy> createState() => _gAlLeRyState();
}

class _gAlLeRyState extends State<gAlLeRy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: BasicAppbar(""),
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
                      Icons.location_on_outlined,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("LOCATIONS",
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
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectMumbaiLocation()));
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 36,
                      child: ImageIcon(AssetImage("assets/location/mumbai.png"),
                          size: 28, color: Color.fromARGB(255, 187, 42, 34)),
                    ),
                    Text(
                      'Mumbai',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectPuneLocation()));
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 42,
                      width: 38,
                      child: ImageIcon(AssetImage("assets/location/pune.png"),
                          size: 28, color: Color.fromARGB(255, 187, 42, 34)),
                    ),
                    Text(
                      'Pune',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectBangalore()));
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 42,
                      width: 45,
                      child: ImageIcon(
                          AssetImage("assets/location/bangalore.png"),
                          size: 28,
                          color: Color.fromARGB(255, 187, 42, 34)),
                    ),
                    Text(
                      'Bangalore',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
