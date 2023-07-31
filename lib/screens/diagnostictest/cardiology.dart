import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/diagnostictest/cardiacCT.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/forMoreInformation.dart';

class Cardiology extends StatefulWidget {
  const Cardiology({Key? key}) : super(key: key);

  @override
  State<Cardiology> createState() => _CardiologyState();
}

class _CardiologyState extends State<Cardiology> {
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
          title: "CARDIOLOGY",
          svgAssetPath: "assets/diagnostic-test/cardiology-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 15, 12, 5),
          child: Image.asset("assets/diagnostic-test/cardiology-img2.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              InkWell(
                  onTap: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CardiacCT()));
                  }),
                  child: Expanded(
                    child: Text(
                      "Coronary CT Angio (Cardiac CT)",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      softWrap: true,
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              Expanded(
                child: Text("Cardiac MRI",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    softWrap: true),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              Expanded(
                  child: Expanded(
                child: Text("ECG & Stress Test",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    softWrap: true),
              )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              Expanded(
                  child: Expanded(
                child: Text("Sonography and Colour Doppler",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    softWrap: true),
              )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              Expanded(
                child: Text("3D & 2D Echo",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    softWrap: true),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              Expanded(
                child: Text("Holter Monitoring",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    softWrap: true),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/bullet-icons.svg"),
              ),
              Expanded(
                  child: Expanded(
                child: Text("Ambulatory BP",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    softWrap: true),
              )),
            ],
          ),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
