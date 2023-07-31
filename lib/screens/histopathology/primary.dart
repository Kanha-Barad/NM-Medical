import 'package:flutter/material.dart';
import '../../widgets/forMoreInformation.dart';


import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';

class PriMARY extends StatefulWidget {
  const PriMARY({super.key});

  @override
  State<PriMARY> createState() => _PriMARYState();
}

class _PriMARYState extends State<PriMARY> {
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
          title: "PRIMARY",
          svgAssetPath: "assets/histopathology/primary-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 10, 10),
          child: Text(
              "Histopatholgy opinion from the grossing speciman by our supper speciality panel of Doctors"),
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
