import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/whatsappmessage.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/userdrawer.dart';

class EVaOsetoPOROsiSSCReeniNG extends StatefulWidget {
  const EVaOsetoPOROsiSSCReeniNG({super.key});

  @override
  State<EVaOsetoPOROsiSSCReeniNG> createState() => _EVaOsetoPOROsiSSCReeniNGState();
}

class _EVaOsetoPOROsiSSCReeniNGState extends State<EVaOsetoPOROsiSSCReeniNG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("",""),
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
                              "assets/Evapackages/eva-osteoporosis-screening-title.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("EVA OSTEOPOROSIS SCREENING",
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
          padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
          child: Text("Cooming Soon..."),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        WhatsApp(context),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
