import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/whatsappmessage.dart';

import '../../widgets/app_drawer.dart';
import '../../widgets/basic_appbar.dart';
import '../../widgets/bottom_navigation.dart';
import '../../widgets/userdrawer.dart';

class SEconDarY extends StatefulWidget {
  const SEconDarY({super.key});

  @override
  State<SEconDarY> createState() => _SEconDarYState();
}

class _SEconDarYState extends State<SEconDarY> {
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
                              "assets/histopathologysecondary/secondary-white.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("SECONDARY",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
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
          child: Container(
            height: MediaQuery.of(context).size.height * 0.23,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(
                      "assets/histopathologysecondary/local-menu.jpg"),
                  fit: BoxFit.fitHeight,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Text(
            "LOCAL",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text(
              "Histopatholgy opinion from the grossing speciman by our supper speciality panel of Doctors"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.23,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(
                      "assets/histopathologysecondary/national-menu.jpg"),
                  fit: BoxFit.fitHeight,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Text(
            "National",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text("From renowned Hospitals & Cancer centres In India"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 14, 12, 4),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.23,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(
                      "assets/histopathologysecondary/international-menu.jpg"),
                  fit: BoxFit.fitHeight,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 10),
          child: Text(
            "International",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 0, 10),
          child: Text(
              "From renowned University Hospitals & Cancer centres around the globe especially from USA"),
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
