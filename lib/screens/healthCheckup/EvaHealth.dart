import 'package:flutter/material.dart';

import '../../widgets/IconTextWidget.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import '../../widgets/userdrawer.dart';
import 'evapackages/EvaOSteoPorosisScreening.dart';
import 'evapackages/evaAdeloscence.dart';
import 'evapackages/evaMenopause.dart';
import 'evapackages/evabrestscreening.dart';
import 'evapackages/evacancerscreening.dart';
import 'evapackages/evainfertility.dart';
import 'evapackages/evamaritalBeginnings.dart';
import 'evapackages/evanewbormscreening.dart';
import 'evapackages/evapregnancy.dart';
import 'evapackages/evatotalwellness.dart';

class EVAHealTHCheckUP extends StatefulWidget {
  @override
  State<EVAHealTHCheckUP> createState() => _EVAHealTHCheckUPState();
}

class _EVAHealTHCheckUPState extends State<EVAHealTHCheckUP> {
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
          title: "EVA PACKAGES",
          svgAssetPath: "assets/eva-packages/eva-packages-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewBornScreening()));
                    },
                    child: buildIconItem(
                      imageAsset:
                          'assets/eva-packages/eva-new-born-screening.svg',
                      labelText: 'Eva New\nBorn Screening',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVaAdelosceNCE()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/eva-packages/eva-adolescence.svg',
                      labelText: 'Eva\ndolescence',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVaMenoPAusE()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/eva-packages/eva-menopause.svg',
                      labelText: 'Eva\nMenopause',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVaMarITAlBeGINnIngS()));
                    },
                    child: buildIconItem(
                      imageAsset:
                          'assets/eva-packages/eva-marital-beginnings.svg',
                      labelText: 'Eva Marital\nBeginnings',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVaINFertiLItY()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/eva-packages/eva-infertility.svg',
                      labelText: 'Eva\nInfertility',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVaPregnaNCY()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/eva-packages/eva-pregnancy.svg',
                      labelText: 'Eva\nPregnancy',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVaBreastScreenING()));
                    },
                    child: buildIconItem(
                      imageAsset:
                          'assets/eva-packages/eva-breast-screening.svg',
                      labelText: 'Eva Breast\nScreening',
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    EVaOsetoPOROsiSSCReeniNG()));
                      },
                      child: buildIconItem(
                        imageAsset:
                            'assets/eva-packages/eva-osteoporosis-screening.svg',
                        labelText: 'Eva Osteoporosis\nScreening',
                      )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVaCanceRSCReeniNG()));
                    },
                    child: buildIconItem(
                      imageAsset:
                          'assets/eva-packages/eva-cancer-screening.svg',
                      labelText: 'Eva Cancer\nScreening',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVaTotalWELlnEss()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/eva-packages/eva-total-wellness.svg',
                      labelText: 'Eva Total\nWellness',
                    ),
                  ),
                ]))
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
