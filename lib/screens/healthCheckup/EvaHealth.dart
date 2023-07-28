import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("",""),
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
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/Evapackages/eva-new-born-screening-title.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("EVA PACKAGES",
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
          padding: const EdgeInsets.fromLTRB(10, 35, 13, 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  child: Column(
                    children: [
                      Container(
                        height: 33,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/Evapackages/eva-new-born-screening.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text("Eva New\nBorn Screening",
                          textAlign: TextAlign.center)
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewBornScreening()));
                  }),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => EVaAdelosceNCE())));
                },
                child: Column(
                  children: [
                    Container(
                      height: 33,
                      width: 26,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/Evapackages/eva-adolescence.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Eva\nAdolescence", textAlign: TextAlign.center)
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EVaMenoPAusE()));
                },
                child: Column(
                  children: [
                    Container(
                      height: 33,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/Evapackages/eva-menopause.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Eva\nMonopause", textAlign: TextAlign.center)
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(26, 20, 10, 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EVaMarITAlBeGINnIngS()));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 33,
                          width: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Evapackages/eva-marital-beginnings.png"),
                                  fit: BoxFit.fill)),
                        ),
                        const Text("Eva Marital\nBeginings",
                            textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EVaINFertiLItY()));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 33,
                            width: 35,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Evapackages/eva-infertility.png"),
                                    fit: BoxFit.fill)),
                          ),
                          const Text("Eva\nInfertility",
                              textAlign: TextAlign.center)
                        ],
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EVaPregnaNCY()));
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 33,
                            width: 28,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Evapackages/eva-pregnancy.png"),
                                    fit: BoxFit.fill)),
                          ),
                          Text("Eva\nPregnancy", textAlign: TextAlign.center)
                        ],
                      )),
                ])),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EVaBreastScreenING()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 33,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/Evapackages/eva-breast-screening.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text("Eva Breast\nScreening",
                          textAlign: TextAlign.center)
                    ],
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EVaTotalWELlnEss()));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 33,
                        width: 34,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/Evapackages/eva-total-wellness.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text("Eva Total\nWellness",
                          textAlign: TextAlign.center)
                    ],
                  )),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EVaCanceRSCReeniNG()));
                },
                child: Column(
                  children: [
                    Container(
                      height: 33,
                      width: 28,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/Evapackages/eva-cancer-screening.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Eva Cancer\nScreening",
                        textAlign: TextAlign.center)
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(14, 20, 0, 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EVaOsetoPOROsiSSCReeniNG()));
                },
                child: Column(
                  children: [
                    Container(
                      height: 33,
                      width: 33,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/Evapackages/eva-osteoporosis-screening.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Eva Osteoporosis\nScreening",
                        textAlign: TextAlign.center)
                  ],
                ),
              ),
            ]))
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
