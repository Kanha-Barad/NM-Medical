import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/locations/locationbangalore.dart';

import 'IconTextWidget.dart';
import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'customContainer.dart';
import 'locations/locationmumbai.dart';
import 'locations/locationpune.dart';

class loCaTiOn extends StatefulWidget {
  const loCaTiOn({Key? key}) : super(key: key);

  @override
  State<loCaTiOn> createState() => _loCaTiOnState();
}

class _loCaTiOnState extends State<loCaTiOn> {
   bool isUserProfileIconClicked = false;

  // Function to handle user-profile icon tap
  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("","",onUserProfileIconTap: handleUserProfileIconTap,),
     endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "LOCATIONS",
          svgAssetPath: "assets/locations/location-title.svg",
        ),
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
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
