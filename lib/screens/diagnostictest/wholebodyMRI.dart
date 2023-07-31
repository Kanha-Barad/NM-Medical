import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/userdrawer.dart';
import '../../widgets/whatsappmessage.dart';

class WholebodyMRI extends StatefulWidget {
  const WholebodyMRI({Key? key}) : super(key: key);

  @override
  State<WholebodyMRI> createState() => _WholebodyMRIState();
}

class _WholebodyMRIState extends State<WholebodyMRI> {
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
appBar: BasicAppbar("", "", onUserProfileIconTap: handleUserProfileIconTap),
      endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "WHOLE BODY MRI",
          svgAssetPath: "assets/diagnostic-test/whole-body-mri-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 14, 8, 4),
          child: Container(
            // Set the height or width constraints as needed to control the size of the image
            // height: 200, // Example: Set the height to 200 units
            width: MediaQuery.of(context)
                .size
                .width, // Example: Set the width to 200 units
            child: Image.asset(
              "assets/diagnostic-test/whole-body-mri-img2.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Expanded(
            child: Text(
              "It ensures to evaluate all the organs in the body, including head, neck, chest, abdomen, pelvis, musculoskeletal and whole spine. Moreover, it complements other investigations like Sonography and Colour Doppler for a thorough evaluation of any disease.",
              style: TextStyle(
                  fontSize: 14,
                  //color: Colors.black,
                  fontWeight: FontWeight.w400),
              softWrap: true,
            ),
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
