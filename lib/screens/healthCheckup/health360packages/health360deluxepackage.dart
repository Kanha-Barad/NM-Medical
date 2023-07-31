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

class HealTH360DeluXePackages extends StatefulWidget {
  const HealTH360DeluXePackages({super.key});

  @override
  State<HealTH360DeluXePackages> createState() =>
      _HealTH360DeluXePackagesState();
}

final value = NumberFormat("#,##0", "en_US");

class _HealTH360DeluXePackagesState extends State<HealTH360DeluXePackages> {
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
          title: "HEALTH 360 DELUXE",
          svgAssetPath: "assets/images/packages-details.svg",
          onBackButtonPressed: () {
            Navigator.pop(context, true);
          },
        ),
        CustomWidgetInvestmentContainer(
            InvesmentTitle: "Health 360 Deluxe Investment",
            onEnquirenowButtonPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => EnQUiry())));
            },
            InvestmentValue: 64500),
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
              const Text("Non-Invasive MRI Renal Angio",
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
              const Text("Whole Body MRI",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(22, 10, 0, 5),
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
                    "Screening of Brain, Neck, Chest, Whole spine, Abdominal organs, Lower limbs, & Joints.",
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
              Text("Cancer Markers Profile",
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
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  "For Chest, Liver, Pancreas, Breast",
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
              Text("Food Allergy Test",
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
                    "Allergy testing for Wheat, Rice, Chick Pea, Peanut, Soyabean, Tomato, Spinach, Cabbage, Paprika.",
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
              Text("Genetic Panel Cardiac Risk",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/health-360/health360-deluxe-image.jpg"),
        ),
        Divider(indent: 10, endIndent: 10, thickness: 1),
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
