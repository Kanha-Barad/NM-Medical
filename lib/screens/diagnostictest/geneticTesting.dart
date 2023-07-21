import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/userdrawer.dart';
import '../../widgets/whatsappmessage.dart';

class GeneticTesting extends StatefulWidget {
  const GeneticTesting({Key? key}) : super(key: key);

  @override
  State<GeneticTesting> createState() => _GeneticTestingState();
}

class _GeneticTestingState extends State<GeneticTesting> {
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
                child: Image.asset(
                    "assets/diagnostictests/generic-testing-title.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("GENETIC TESTING",
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
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Image.asset("assets/diagnostictests/generic-test.jpg"),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text("The Future is Here",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text("Let's evolve from preventive to predictive diagnosis.",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
          child: Text("From generalised to personalised treatment.",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
        ),
        Divider(
          indent: 15,
          endIndent: 15,
          thickness: 1.5,
        ),
        WhatsApp(context)
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
