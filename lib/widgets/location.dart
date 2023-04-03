import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/userdrawer.dart';

import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'locations/selectlocation.dart';

class loCaTiOn extends StatefulWidget {
  const loCaTiOn({Key? key}) : super(key: key);

  @override
  State<loCaTiOn> createState() => _loCaTiOnState();
}

class _loCaTiOnState extends State<loCaTiOn> {
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
                          builder: (context) => SelectLocation()));
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
              Column(
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
              Column(
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
              )
            ],
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
