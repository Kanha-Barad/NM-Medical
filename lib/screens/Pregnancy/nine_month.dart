import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../widgets/forMoreInformation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/phoneCallwidget.dart';

String nineMONthMail = "";

class NIneMonTH extends StatefulWidget {
  NIneMonTH(nineMONTH) {
    nineMONthMail = "";
    nineMONthMail = nineMONTH;
  }

  @override
  State<NIneMonTH> createState() => _NIneMonTHState();
}

class _NIneMonTHState extends State<NIneMonTH> {
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
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "NINE MONTH",
          svgAssetPath: "assets/pregnancy/nine-month-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context, true);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/pregnancy/nine-month.png"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 20, 0, 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Zoom Classes",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Prenatal Classes",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Postnatal Classes",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 2, 0, 8),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text(
                "Lactation Consultancy",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 10, 0, 8),
          child: Text("For More infomration Contact",
              style: TextStyle(
                fontSize: 14,
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 0, 10),
          child: Text(
            "Dr. Rita Shah",
            style: TextStyle(
                color: Color.fromARGB(255, 187, 42, 34),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(14, 0, 0, 10),
          child: Row(
            children: [
              SvgPicture.asset("assets/24-7-support/mobile-icon.svg"),
              Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: PhoneCallWidget(
                    phoneNumber: '9821139999',
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/pregnancy/rita-shah.png"),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context, nineMONthMail),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
