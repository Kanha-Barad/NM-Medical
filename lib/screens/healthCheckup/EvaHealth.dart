import 'package:flutter/material.dart';

import '../../widgets/IconTextWidget.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import 'evapackages/EvaOSteoPorosisScreening.dart';
import 'evapackages/evaAdeloscence.dart';
import 'evapackages/evaMenopause.dart';
import 'evapackages/evabrestscreening.dart';
import 'evapackages/evacancerscreening.dart';
import 'evapackages/evaPCOSpackage.dart';
import 'evapackages/evamaritalBeginnings.dart';
import 'evapackages/evadiagnosticpackage.dart';
import 'evapackages/evapregnancy.dart';
import 'evapackages/evawellnesspackages.dart';

class EVAHealTHCheckUP extends StatefulWidget {
  @override
  State<EVAHealTHCheckUP> createState() => _EVAHealTHCheckUPState();
}

class _EVAHealTHCheckUPState extends State<EVAHealTHCheckUP> {
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
            title: "EVA PACKAGES",
            svgAssetPath: "assets/eva-packages/eva-packages-title.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(children: [
          Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  childAspectRatio: 1.2,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
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
                                builder: (context) => EVaPCOSpackage()));
                      },
                      child: buildIconItem(
                        imageAsset: 'assets/eva-packages/eva-infertility.svg',
                        labelText: 'Eva\nPCOS Package',
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
                                builder: (context) => EVaWELlnEssPackages()));
                      },
                      child: buildIconItem(
                        imageAsset:
                            'assets/eva-packages/eva-total-wellness.svg',
                        labelText: 'Eva Wellness\nPackages',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EvaDiagnosticPackage()));
                      },
                      child: buildIconItem(
                        imageAsset: 'assets/services/diagnostic-tests.svg',
                        labelText: 'Eva\nDiagnostic Package',
                      ),
                    ),
                  ]))
        ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
