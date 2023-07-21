import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/locations/locationbangalore.dart';
import 'package:nmmedical/widgets/userdrawer.dart';

import 'IconTextWidget.dart';
import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'locations/locationmumbai.dart';
import 'locations/locationpune.dart';

class loCaTiOn extends StatefulWidget {
  const loCaTiOn({Key? key}) : super(key: key);

  @override
  State<loCaTiOn> createState() => _loCaTiOnState();
}

class _loCaTiOnState extends State<loCaTiOn> {
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
                  child:
                      SvgPicture.asset("assets/locations/location-title.svg")),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("LOCATIONS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
            ])),
        Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                // mainAxisSpacing: 0.0, // Adjust the vertical spacing between icons
                // crossAxisSpacing:
                //     0.0, // Adjust the horizontal spacing between icons
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectMumbaiLocation()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/locations/mumbai.svg',
                      labelText: 'Mumbai',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectPuneLocation()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/locations/pune.svg',
                      labelText: 'Pune',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectBangalore()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/locations/bangalore.svg',
                      labelText: 'Bangalore',
                    ),
                  ),
                ])),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
