import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../../widgets/whatsappmessage.dart';


import '../../../widgets/Enquary.dart';
import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/packageinvestmentwidget.dart';
import '../../../widgets/userdrawer.dart';
import '../nm_packages/enquire.dart';

class HealTH360PluSPackages extends StatefulWidget {
  const HealTH360PluSPackages({super.key});

  @override
  State<HealTH360PluSPackages> createState() => _HealTH360PluSPackagesState();
}

final value = NumberFormat("#,##0", "en_US");

class _HealTH360PluSPackagesState extends State<HealTH360PluSPackages> {
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
      appBar: BasicAppbar("HM", "",onUserProfileIconTap: handleUserProfileIconTap,),
     endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "HEALTH 360 PLUS",
          svgAssetPath: "assets/health-360/health-360-plus-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context, true);
          },
        ),
        CustomWidgetInvestmentContainer(
            InvesmentTitle: "Health 360 Plus Investment",
            onEnquirenowButtonPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => EnQUiry())));
            },
            InvestmentValue: 29500),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text("Plan Highlights",
              style: TextStyle(
                  color: Color.fromARGB(255, 187, 42, 34),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 6, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              const Text("Health 360 Screening Plan",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 38),
          child: Container(
            height: 16,
            width: 16,
            child: Icon(
              Icons.add,
              color: Color.fromARGB(255, 187, 42, 34),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 10, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              Text("64 slice Cardiac CT Scan",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: SvgPicture.asset(
                    "assets/images/sub-level-bullet-icons.svg"),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "64 Slice Cardiac CT is an ultra-fast non-invasive technique to screen for blockages in the coronary arteries",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    softWrap: true,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 38),
          child: Container(
            height: 16,
            width: 16,
            child: Icon(
              Icons.add,
              color: Color.fromARGB(255, 187, 42, 34),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 10, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              Text("Non-Invasive MRI Renal Angio",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: SvgPicture.asset(
                    "assets/images/sub-level-bullet-icons.svg"),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text(
                    "Introducing non - invasive MRI Renal Angio to screen for renal artery disease commonly seen in Cardiac, Diabetic, & Hypertensive patients",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    softWrap: true,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/health-360/health360-plus-img.jpg"),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
