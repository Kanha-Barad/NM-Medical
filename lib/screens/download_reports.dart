import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/userdrawer.dart';

class DonwloadReport extends StatefulWidget {
  @override
  State<DonwloadReport> createState() => _DonwloadReportState();
}

class _DonwloadReportState extends State<DonwloadReport> {
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
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/download-report.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("REPORTS", style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600)),
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
          padding: const EdgeInsets.fromLTRB(12, 15, 12, 10),
          child: Row(
            children: [
              Container(
                height: 33,
                width: 33,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/medical-report.png"),
                        fit: BoxFit.fitHeight)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text("Blood Cholesterol Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text("10/09/2022",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/download-icon.png"),
                        fit: BoxFit.fitHeight)),
              )
            ],
          ),
        ),
        const Divider(indent: 14, endIndent: 14, thickness: 1),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 15, 12, 10),
          child: Row(
            children: [
              Container(
                height: 33,
                width: 33,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/medical-report.png"),
                        fit: BoxFit.fitHeight)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text("Blood Cholesterol Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text("10/09/2022",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/download-icon.png"),
                        fit: BoxFit.fitHeight)),
              )
            ],
          ),
        ),
        const Divider(indent: 14, endIndent: 14, thickness: 1),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 15, 12, 10),
          child: Row(
            children: [
              Container(
                height: 33,
                width: 33,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/medical-report.png"),
                        fit: BoxFit.fitHeight)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text("Blood Cholesterol Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text("10/09/2022",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/download-icon.png"),
                        fit: BoxFit.fitHeight)),
              )
            ],
          ),
        ),
        const Divider(indent: 14, endIndent: 14, thickness: 1),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 15, 12, 10),
          child: Row(
            children: [
              Container(
                height: 33,
                width: 33,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/medical-report.png"),
                        fit: BoxFit.fitHeight)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text("Blood Cholesterol Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text("10/09/2022",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/download-icon.png"),
                        fit: BoxFit.fitHeight)),
              )
            ],
          ),
        ),
        const Divider(indent: 14, endIndent: 14, thickness: 1),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 15, 12, 10),
          child: Row(
            children: [
              Container(
                height: 33,
                width: 33,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/medical-report.png"),
                        fit: BoxFit.fitHeight)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text("Blood Cholesterol Test",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text("10/09/2022",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400)),
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/download-icon.png"),
                        fit: BoxFit.fitHeight)),
              )
            ],
          ),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
