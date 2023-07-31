import 'package:flutter/material.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/Cardiac_CT.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/comparepackages.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/diamond.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/gold.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/goldplus.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/health360deluxe.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/platinum.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/predictivegemonicmapping.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/seniorcitizen.dart';
import 'package:nmmedical/screens/healthCheckup/nm_packages/wholebodymri.dart';

import '../../widgets/IconTextWidget.dart';
import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/customContainer.dart';
import 'nm_packages/primary.dart';

class NMHealthCheckUP extends StatefulWidget {
  @override
  State<NMHealthCheckUP> createState() => _NMHealthCheckUPState();
}

class _NMHealthCheckUPState extends State<NMHealthCheckUP> {
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
          title: "NM PACKAGES",
          svgAssetPath: "assets/health-checkup/health-check-up.svg",
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
                              builder: (context) => PrimaryPackageDetails()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-checkup/primary.svg',
                      labelText: 'Primary',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GoldPackageDetails()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-checkup/gold.svg',
                      labelText: 'Gold',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GoldPlusPackageDetails()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-checkup/gold-plus.svg',
                      labelText: 'Gold Plus',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PlatiNUmPackageDetails()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-checkup/platinum.svg',
                      labelText: 'Platinum',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DiaMoNDPackageDetails()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-checkup/diamond.svg',
                      labelText: 'Diamond',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HealTH360DeLUxE()));
                    },
                    child: buildIconItem(
                      imageAsset:
                          'assets/health-checkup/nm-packages-health-360-deluxe.svg',
                      labelText: 'Health 360 \nDeluxe',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SeniorCITIzeN()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-checkup/senior-citizens.svg',
                      labelText: 'Senior \nCitizens',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PredictiveGemonicMapping()));
                    },
                    child: buildIconItem(
                      imageAsset:
                          'assets/health-checkup/predictive-genomic-mapping.svg',
                      labelText: 'Predictive \nGenomic Mapping',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WholeBoDyMRI()));
                    },
                    child: buildIconItem(
                      imageAsset: 'assets/health-checkup/whole-body-MRI.svg',
                      labelText: 'Whole Body\nMRI',
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CArdiaCCTPackage()));
                      },
                      child: buildIconItem(
                        imageAsset: 'assets/health-checkup/cardiac-CT.svg',
                        labelText: 'Cardiac\nCT',
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComparePackage()));
                      },
                      child: buildIconItem(
                        imageAsset:
                            'assets/health-checkup/comparison-of-package.svg',
                        labelText: 'Comparison \nOf Package',
                      )),
                ]))
      ])),
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
