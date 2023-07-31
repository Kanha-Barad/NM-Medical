import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../forMoreInformation.dart';


import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../customContainer.dart';

class paYmEnTs extends StatefulWidget {
  const paYmEnTs({super.key});

  @override
  State<paYmEnTs> createState() => _paYmEnTsState();
}

class _paYmEnTsState extends State<paYmEnTs> {
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
          title: "PAYMENTS",
          svgAssetPath: "assets/payments/payment-icon.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
          child: Text("Cooming Soon..."),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        FormoreInformation(context),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
