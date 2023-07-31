import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/locations/locationbangalore.dart';
import 'package:nmmedical/widgets/userdrawer.dart';

import 'IconTextWidget.dart';
import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'customContainer.dart';
import 'gallery/gallerybangalore.dart';
import 'gallery/gallerymumbai.dart';
import 'gallery/gallerypune.dart';
import 'locations/locationmumbai.dart';
import 'locations/locationpune.dart';

class gAlLeRy extends StatefulWidget {
  const gAlLeRy({Key? key}) : super(key: key);

  @override
  State<gAlLeRy> createState() => _gAlLeRyState();
}

class _gAlLeRyState extends State<gAlLeRy> {
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
          title: "GALLERY",
          svgAssetPath: "assets/gallery/gallery-title.svg",
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
                              builder: (context) => SelectMumbaigallery()));
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
                              builder: (context) => SelectPuneGallery()));
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
                              builder: (context) => SelectBangaloreGallery()));
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
