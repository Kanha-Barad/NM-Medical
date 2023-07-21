import 'package:flutter/material.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/userdrawer.dart';
import '../../widgets/whatsappmessage.dart';

class WholebodyMRI extends StatefulWidget {
  const WholebodyMRI({Key? key}) : super(key: key);

  @override
  State<WholebodyMRI> createState() => _WholebodyMRIState();
}

class _WholebodyMRIState extends State<WholebodyMRI> {
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
                    "assets/diagnostictests/whole-body-mri-title.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("WHOLE BODY MRI",
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
          padding: const EdgeInsets.fromLTRB(8, 14, 8, 4),
          child: Image.asset("assets/diagnostictests/whole-body-mri-img2.jpg"),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 0, 10),
          child: Text(
              "It ensures to evaluate all the organs in the body, including head, neck, chest, abdomen, pelvis, musculoskeletal and whole spine. Moreover, it complements other investigations like Sonography and Colour Doppler for a thorough evaluation of any disease.",
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
