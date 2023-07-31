import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/customContainer.dart';
import 'nm_home.dart';

class UploadPrescription extends StatefulWidget {
  @override
  State<UploadPrescription> createState() => _UploadPrescriptionState();
}

class _UploadPrescriptionState extends State<UploadPrescription> {
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
          child: Column(children: [
        CustomContainerBar(
          title: "UPLOAD PRESCRIPTION",
          svgAssetPath: "assets/images/upload-prescription-white.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: SvgPicture.asset("assets/images/upload-prescription-big.svg"),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text("Upload Prescription",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 150,
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 187, 42, 34),
                      width: 1,
                    ),
                  ),
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NMHome()));
                      },
                      icon: SvgPicture.asset("assets/images/take-picture.svg"),
                      label: const Text("Take Picture",
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                          ))),
                ),
              ),
              SizedBox(
                  height: 50,
                  width: 150,
                  child: Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 187, 42, 34),
                          width: 1,
                        ),
                      ),
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/images/gallery.svg"),
                          label: const Text("Gallery",
                              style: TextStyle(
                                color: Color.fromARGB(255, 187, 42, 34),
                              )))))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/upload-bullet.svg"),
              ),
              const Text("Medical-Prescription1.jpg"),
              const Spacer(),
              SvgPicture.asset("assets/images/delete.svg"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SvgPicture.asset("assets/images/upload-bullet.svg"),
              ),
              const Text("Medical-Prescription2.jpg"),
              const Spacer(),
              SvgPicture.asset("assets/images/delete.svg"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Card(
              elevation: 2.0,
              color: const Color.fromARGB(255, 237, 28, 36),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                  padding: EdgeInsets.fromLTRB(50, 13, 50, 13),
                  child: (Text("Upload",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600))))),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
