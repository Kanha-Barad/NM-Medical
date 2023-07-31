import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/whatsappmessage.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/userdrawer.dart';
import '../widgets/customContainer.dart';

class SuppoRT extends StatefulWidget {
  const SuppoRT({super.key});

  @override
  State<SuppoRT> createState() => _SuppoRTState();
}

class _SuppoRTState extends State<SuppoRT> {
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
          title: "24/7 SUPPORT",
          svgAssetPath: "assets/24-7-support/support-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
              leading: SvgPicture.asset("assets/24-7-support/existing-patient.svg"),
          
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("EXISTING PATIENT",
                    style: TextStyle(
                        color: Color.fromARGB(255, 218, 75, 65),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0)),
              ),
              subtitle: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                                    "assets/24-7-support/mobile-icon.svg"),
                              
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("9372694233",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SvgPicture.asset(
                                      "assets/24-7-support/whatsapp-icon.svg"),
                                 
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("9372694233",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(children: [
                        SvgPicture.asset(
                                    "assets/24-7-support/email-icon.svg"),
                              
                      
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("nmmedical45@gmail.com",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                      ]))
                ],
              )),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: ListTile(
              leading: SvgPicture.asset("assets/24-7-support/new-patient.svg"),
                    
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("NEW PATIENT",
                    style: TextStyle(
                        color: Color.fromARGB(255, 218, 75, 65),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0)),
              ),
              subtitle: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                    SvgPicture.asset(
                                    "assets/24-7-support/mobile-icon.svg"),
                              
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("9325462835",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: SvgPicture.asset(
                                      "assets/24-7-support/whatsapp-icon.svg"),
                                
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("9256855758",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(children: [
                        SvgPicture.asset(
                                    "assets/24-7-support/email-icon.svg"),
                               
                        
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("nmmedical45@gmail.com",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                      ]))
                ],
              )),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
