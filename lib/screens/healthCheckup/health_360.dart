import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/userdrawer.dart';

class Health360 extends StatefulWidget {
  @override
  State<Health360> createState() => _Health360State();
}

class _Health360State extends State<Health360> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(context),
     drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child: Column(children: [
        // Row(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.fromLTRB(10, 40, 0, 3),
        //       child: Container(
        //         // color: Colors.blue,
        //         height: 60.0,
        //         width: 60.0,
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.rectangle,
        //             image: DecorationImage(
        //                 image: AssetImage("assets/images/nm-logo.png"),
        //                 fit: BoxFit.fitHeight)),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.fromLTRB(5, 40, 0, 3),
        //       child: Container(
        //         // color: Colors.blue,
        //         height: 50.0,
        //         width: 50.0,
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.rectangle,
        //             image: DecorationImage(
        //                 image: AssetImage("assets/images/health-360-logo.png"),
        //                 fit: BoxFit.fitHeight)),
        //       ),
        //     ),
        //     const Spacer(),
        //     Padding(
        //       padding: const EdgeInsets.fromLTRB(0, 38, 8, 0),
        //       child: Container(
        //         height: 25,
        //         width: 22,
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.rectangle,
        //             image: DecorationImage(
        //                 image: AssetImage("assets/header/search.png"),
        //                 fit: BoxFit.fill)),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.fromLTRB(6, 38, 8, 0),
        //       child: Container(
        //         height: 25,
        //         width: 25,
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.rectangle,
        //             image: DecorationImage(
        //                 image: AssetImage("assets/header/test-results.png"),
        //                 fit: BoxFit.fill)),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.fromLTRB(6, 38, 8, 0),
        //       child: Container(
        //         height: 25,
        //         width: 18,
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.rectangle,
        //             image: DecorationImage(
        //                 image: AssetImage("assets/header/location.png"),
        //                 fit: BoxFit.fill)),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.fromLTRB(6, 38, 10, 0),
        //       child: Container(
        //         height: 25,
        //         width: 22,
        //         decoration: const BoxDecoration(
        //             shape: BoxShape.rectangle,
        //             image: DecorationImage(
        //                 image: AssetImage("assets/header/gallery.png"),
        //                 fit: BoxFit.fill)),
        //       ),
        //     ),
        //     Padding(
        //         padding: const EdgeInsets.fromLTRB(12, 38, 14, 0),
        //         child: Builder(
        //           builder: (context) => InkWell(
        //             child: Container(
        //               height: 22,
        //               width: 22,
        //               decoration: const BoxDecoration(
        //                   shape: BoxShape.rectangle,
        //                   image: DecorationImage(
        //                       image: AssetImage("assets/header/menu-icon.png"),
        //                       fit: BoxFit.fill)),
        //             ),
        //             onTap: () => Scaffold.of(context).openEndDrawer(),
        //           ),
        //         )),
        //   ],
        // ),
        Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 187, 42, 34),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: 35,
                  width: 40,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/packages-details.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("PACKAGE", style: TextStyle(color: Colors.white)),
              ),
              const Spacer(),
              TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  icon: const Icon(Icons.arrow_back_ios,
                      color: Colors.white, size: 18),
                  label:
                      const Text("BACK", style: TextStyle(color: Colors.white)))
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
                                "assets/healththreesixty/executive.png"),
                            fit: BoxFit.fill)),
                  ),
                  const Text("Executive", textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/healththreesixty/executive-plus.png"),
                            fit: BoxFit.fill)),
                  ),
                  const Text("Executive Plus", textAlign: TextAlign.center)
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/healththreesixty/health-360.png"),
                            fit: BoxFit.fill)),
                  ),
                  const Text("Health 360", textAlign: TextAlign.center)
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/healththreesixty/health-360-plus.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Health\n360 Plus", textAlign: TextAlign.center)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      width: 43,
                      decoration: const BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/healththreesixty/cardiac-CT.png"),
                              fit: BoxFit.fill)),
                    ),
                    const Text("Cardiac\nCT", textAlign: TextAlign.center)
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/healththreesixty/whole-body-MRI.png"),
                            fit: BoxFit.fill)),
                  ),
                  const Text("Whole\nBody MRI", textAlign: TextAlign.center)
                ],
              )
            ],
          ),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
