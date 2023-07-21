import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/userdrawer.dart';
import '../../widgets/whatsappmessage.dart';

class SleepApnea extends StatefulWidget {
  const SleepApnea({Key? key}) : super(key: key);

  @override
  State<SleepApnea> createState() => _SleepApneaState();
}

class _SleepApneaState extends State<SleepApnea> {
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
                child:
                    Image.asset("assets/diagnostictests/sleep-apena-title.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("SLEEP APNEA",
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
          child: Image.asset("assets/diagnostictests/sleep-apnea-img1.jpg"),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 10, 10),
          child: Text(
              "Obstructive Sleep Apnea (OSA) is a condition characterized by intermittent stopping of breath during sleep resulting in snoring, reduced oxygen levels at night, restless quality of sleep and daytime drowsiness. If not diagnosed in time and left untreated, it can lead to a number of cardiovascular complications like Hypertension, Diabetes, Heart Attacks, Arrhythmias, and Stroke.",
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
