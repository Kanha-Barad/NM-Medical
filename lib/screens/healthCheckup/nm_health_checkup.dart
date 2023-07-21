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
import '../../widgets/userdrawer.dart';
import 'nm_packages/primary.dart';

class NMHealthCheckUP extends StatefulWidget {
  @override
  State<NMHealthCheckUP> createState() => _NMHealthCheckUPState();
}

class _NMHealthCheckUPState extends State<NMHealthCheckUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 187, 42, 34),
            child: Row(children: [
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child:
                      Image.asset("assets/healthcheckup/health-check-up.png")),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("NM PACKAGES",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600)),
              ),
              const Spacer(),
              TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: 18),
                  label:
                      const Text("BACK", style: TextStyle(color: Colors.white)))
            ])),
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
                      imageAsset: 'assets/healthcheckup/primary.png',
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
                      imageAsset: 'assets/healthcheckup/gold.png',
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
                      imageAsset: 'assets/healthcheckup/gold-plus.png',
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
                      imageAsset: 'assets/healthcheckup/platinum.png',
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
                      imageAsset: 'assets/healthcheckup/diamond.png',
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
                          'assets/healthcheckup/nm-packages-health-360-deluxe.png',
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
                      imageAsset: 'assets/healthcheckup/senior-citizens.png',
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
                          'assets/healthcheckup/predictive-genomic-mapping.png',
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
                      imageAsset: 'assets/healthcheckup/whole-body-MRI.png',
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
                        imageAsset: 'assets/healthcheckup/cardiac-CT.png',
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
                            'assets/healthcheckup/comparison-of-package.png',
                        labelText: 'Comparison \nOf Package',
                      )),
                ]))
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
