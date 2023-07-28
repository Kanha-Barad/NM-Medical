import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/userdrawer.dart';
import 'Pregnancy/bloodtest.dart';
import 'Pregnancy/nine_month.dart';
import 'Pregnancy/sonography.dart';

class Pregnancy extends StatefulWidget {
  @override
  State<Pregnancy> createState() => _PregnancyState();
}

class _PregnancyState extends State<Pregnancy> {
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
                          image:
                              AssetImage("assets/pregnancy/pregnancywhite.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("PREGNANCY", style: TextStyle(color: Colors.white)),
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
          padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => BlooDTEST())));
                },
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/pregnancy/bloodtest.png"),
                              fit: BoxFit.fill)),
                    ),
                    const SizedBox(height: 8),
                    const Text("Blood Test", textAlign: TextAlign.center)
                  ],
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SONOgraphY())));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 34,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/pregnancy/sonography.png"),
                                fit: BoxFit.fill)),
                      ),
                      const SizedBox(height: 3),
                      const Text("Sonography", textAlign: TextAlign.center)
                    ],
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => NIneMonTH())));
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 34,
                        width: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/pregnancy/ninemonth.png"),
                                fit: BoxFit.fill)),
                      ),
                      const SizedBox(height: 3),
                      const Text("Nine Month", textAlign: TextAlign.center)
                    ],
                  ))
            ],
          ),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
