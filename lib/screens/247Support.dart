import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/whatsappmessage.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/userdrawer.dart';

class SuppoRT extends StatefulWidget {
  const SuppoRT({super.key});

  @override
  State<SuppoRT> createState() => _SuppoRTState();
}

class _SuppoRTState extends State<SuppoRT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                              "assets/247support/247-support-title.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("24/7 SUPPORT",
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
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
              leading: Container(
                height: 65,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image:
                          AssetImage("assets/247support/existing-patient.png"),
                      fit: BoxFit.fitHeight,
                    )),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("EXISTING PATIENT",
                    style: TextStyle(
                        color: Color.fromARGB(255, 218, 75, 65),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0)),
              ),
              subtitle: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/247support/mobile-icon.png"),
                                fit: BoxFit.fitHeight,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("9372694233",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/247support/whatsapp-icon.png"),
                                  fit: BoxFit.fitHeight,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("9372694233",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/247support/email-icon.png"),
                                fit: BoxFit.fitHeight,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("nmmedical45@gmail.com",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                      ]))
                ],
              )),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: ListTile(
              leading: Container(
                height: 65,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage("assets/247support/new-patient.png"),
                      fit: BoxFit.fitHeight,
                    )),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text("NEW PATIENT",
                    style: TextStyle(
                        color: Color.fromARGB(255, 218, 75, 65),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0)),
              ),
              subtitle: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/247support/mobile-icon.png"),
                                fit: BoxFit.fitHeight,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("9325462835",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/247support/whatsapp-icon.png"),
                                  fit: BoxFit.fitHeight,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("9256855758",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(children: [
                        Container(
                          height: 12,
                          width: 12,
                          decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/247support/email-icon.png"),
                                fit: BoxFit.fitHeight,
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text("nmmedical45@gmail.com",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.0)),
                        ),
                      ]))
                ],
              )),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
