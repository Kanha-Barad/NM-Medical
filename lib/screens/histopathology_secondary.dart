import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/userdrawer.dart';

class SecondaryHistopathology extends StatefulWidget {
  @override
  State<SecondaryHistopathology> createState() =>
      _SecondaryHistopathologyState();
}

class _SecondaryHistopathologyState extends State<SecondaryHistopathology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(context),
     drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                                  "assets/histopathologysecondary/secondary-white.png"),
                              fit: BoxFit.fitHeight)),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text("SECONDARY",
                        style: TextStyle(color: Colors.white)),
                  ),
                  const Spacer(),
                  TextButton.icon(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      icon: const Icon(Icons.arrow_back_ios,
                          color: Colors.white, size: 18),
                      label: const Text("BACK",
                          style: TextStyle(color: Colors.white)))
                ])),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/histopathologysecondary/domastic.png"),
                                fit: BoxFit.fill)),
                      ),
                      const Text("Domestic", textAlign: TextAlign.center)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/histopathologysecondary/national.png"),
                                  fit: BoxFit.fill)),
                        ),
                        const Text("National", textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/histopathologysecondary/international.png"),
                                  fit: BoxFit.fill)),
                        ),
                        const Text("International", textAlign: TextAlign.center)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
