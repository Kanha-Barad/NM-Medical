import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../userdrawer.dart';

class SelectPuneLocation extends StatefulWidget {
  const SelectPuneLocation({super.key});

  @override
  State<SelectPuneLocation> createState() => _SelectPuneLocationState();
}

String dropdownValuepune = 'Pune';

class _SelectPuneLocationState extends State<SelectPuneLocation> {
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
                child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("LOCATIONS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
              Spacer(),
              TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                  label: Text("BACK",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)))
            ])),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Text(
            'Select City',
            style: TextStyle(
                color: Color.fromARGB(255, 187, 42, 34),
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: DropdownButtonFormField(
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 237, 239, 239), width: 1.5),
              ),
              filled: true,
              // fillColor: Colors.greenAccent,
            ),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Color.fromARGB(255, 187, 42, 34),
            ),
            dropdownColor: Color.fromARGB(255, 237, 239, 239),
            value: dropdownValuepune,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValuepune = newValue!;
              });
            },
            items: <String>[
              'Pune',
              'Mumbai',
              'Bangalore',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                CarouselSlider(
                  items: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        //  margin: EdgeInsets.all(0.0),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assets/location/placeholder-image.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 150.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    // aspectRatio: 16 / 40,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.9,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Color.fromARGB(255, 187, 42, 34),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Kalyani Nagar",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 187, 42, 34),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                          "Fortaleza F Annex Central Avenue,\nKalyani Nagar, Pune 411014",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 6, 4, 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 5.0, left: 19, right: 11),
                        child: Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/location/directions-icon.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text(
                        "Directions",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 5.0, left: 19, right: 11),
                        child: Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/location/gallery-icon.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text(
                        "Gallery",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                CarouselSlider(
                  items: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        //  margin: EdgeInsets.all(0.0),

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assets/location/placeholder-image.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 150.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    // aspectRatio: 16 / 40,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.9,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Icon(
                            Icons.location_on_outlined,
                            color: Color.fromARGB(255, 187, 42, 34),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Shivaji Nagar",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 187, 42, 34),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                          "Sancheti Hospital, Main Building,\nPune 411 005.",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 6, 4, 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 5.0, left: 19, right: 11),
                        child: Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/location/directions-icon.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text(
                        "Directions",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 5.0, left: 19, right: 11),
                        child: Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/location/gallery-icon.png"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text(
                        "Gallery",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
