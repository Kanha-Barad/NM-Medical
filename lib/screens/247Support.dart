import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/forMoreInformation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../widgets/customContainer.dart';
import '../widgets/emailWidget.dart';
import '../widgets/phoneCallwidget.dart';
import '../widgets/whatsappWidget.dart';

class SuppoRT extends StatefulWidget {
  const SuppoRT({super.key});

  @override
  State<SuppoRT> createState() => _SuppoRTState();
}

class _SuppoRTState extends State<SuppoRT> {
  bool isUserProfileIconClicked = false;
  bool isMenuClicked = false;

  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
      isMenuClicked = false; // Reset menu icon click state
    });
  }

  // Function to handle menu icon tap
  void handleMenuIconTap() {
    setState(() {
      isMenuClicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        "",
        "",
        onUserProfileIconTap: handleUserProfileIconTap,
        onMenuIconTap: handleMenuIconTap,
      ),
      endDrawer: AppDrawer(
        isUserIconClicked: isUserProfileIconClicked,
        isMenuIconClicked: isMenuClicked,
      ),
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomContainerBarDelegate(
            title: "24/7 SUPPORT",
            svgAssetPath: "assets/24-7-support/support-title.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListTile(
                    leading: SvgPicture.asset(
                        "assets/24-7-support/existing-patient.svg"),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("EXISTING PATIENT",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 43, 34),
                              fontWeight: FontWeight.w600,
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
                                  child: PhoneCallWidget(
                                    phoneNumber: '9372694233',
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: SvgPicture.asset(
                                    "assets/24-7-support/whatsapp-icon.svg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: WhatsAppWidget(
                                  phoneNumber: '9372694233',
                                  text:
                                      '9372694233', // Optional text for WhatsApp message
                                ),
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
                                child: EmailWidget(
                                  email: 'nmmedical45@gmail.com',
                                ),
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
                    leading: SvgPicture.asset(
                      "assets/24-7-support/new-patient.svg",
                      color: Color(0xffbb2a22),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text("NEW PATIENT",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 43, 34),
                              fontWeight: FontWeight.w600,
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
                                  child: PhoneCallWidget(
                                    phoneNumber: '9325462835',
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: SvgPicture.asset(
                                    "assets/24-7-support/whatsapp-icon.svg"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: WhatsAppWidget(
                                  phoneNumber: '9256855758',
                                  text:
                                      '9256855758', // Optional text for WhatsApp message
                                ),
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
                                child: EmailWidget(
                                  email: 'nmmedical45@gmail.com',
                                ),
                              ),
                            ]))
                      ],
                    )),
              ),
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
