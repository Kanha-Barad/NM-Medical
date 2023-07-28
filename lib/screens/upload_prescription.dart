import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/userdrawer.dart';
import 'nm_home.dart';

class UploadPrescription extends StatefulWidget {
  @override
  State<UploadPrescription> createState() => _UploadPrescriptionState();
}

class _UploadPrescriptionState extends State<UploadPrescription> {
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
                          image: AssetImage(
                              "assets/images/upload-prescription-white.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("UPLOAD PRESCRIPTION",
                    style: TextStyle(color: Colors.white)),
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
          padding: const EdgeInsets.only(top: 25),
          child: Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image:
                        AssetImage("assets/images/upload-prescription-big.png"),
                    fit: BoxFit.fitHeight)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text("Upload Prescription",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 150,
                child: Card(
                  elevation: 2.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 187, 42, 34),
                      width: 1,
                    ),
                  ),
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NMHome()));
                      },
                      icon: Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/take-picture.png"),
                                fit: BoxFit.fitHeight)),
                      ),
                      label: const Text("Take Picture",
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                          ))),
                ),
              ),
              SizedBox(
                  height: 50,
                  width: 150,
                  child: Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(
                          color: Color.fromARGB(255, 187, 42, 34),
                          width: 1,
                        ),
                      ),
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/gallery.png"),
                                    fit: BoxFit.fitHeight)),
                          ),
                          label: const Text("Gallery",
                              style: TextStyle(
                                color: Color.fromARGB(255, 187, 42, 34),
                              )))))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/upload-bullet.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text(" Medical-Prescription1.jpg"),
              const Spacer(),
              Container(
                height: 16,
                width: 16,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/delete.png"),
                        fit: BoxFit.fitHeight)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/upload-bullet.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Text(" Medical-Prescription2.jpg"),
              const Spacer(),
              Container(
                height: 16,
                width: 16,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/delete.png"),
                        fit: BoxFit.fitHeight)),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40),
          child: SizedBox(
              height: 50,
              width: 100,
              child: Card(
                  elevation: 2.0,
                  color: const Color.fromARGB(255, 187, 42, 34),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: (Text("Upload",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500)))))),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
