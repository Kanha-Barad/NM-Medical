import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../customContainer.dart';
import '../userdrawer.dart';

class SelectPuneLocation extends StatefulWidget {
  const SelectPuneLocation({super.key});

  @override
  State<SelectPuneLocation> createState() => _SelectPuneLocationState();
}

class _SelectPuneLocationState extends State<SelectPuneLocation> {
  List<String> dropdownOptions1 = [
    'Mumbai',
    'Pune',
    'Bangalore',
  ];
  String selectedValue1 = 'Pune';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("",""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "LOCATIONS",
          svgAssetPath: "assets/locations/location-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 0, 6),
          child: Text(
            'Select City',
            style: TextStyle(
                color: Color.fromARGB(255, 187, 42, 34),
                fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DropdownButton<String>(
              value: selectedValue1,
              onChanged: (newValue) {
                setState(() {
                  selectedValue1 = newValue!;
                });
              },
              items: dropdownOptions1.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                );
              }).toList(),
              icon: Padding(
                padding: const EdgeInsets.only(left: 260.0),
                child: Icon(
                  // Set an empty icon to hide the default dropdown arrow
                  Icons.arrow_drop_down,
                  color: Color.fromARGB(
                      255, 187, 42, 34), // Set the color to transparent
                ),
              ),
              // SvgPicture.asset(
              //   "assets/home-visit/select-down-arrow.svg",
              //   color: Color.fromARGB(255, 187, 42, 34),
              // )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Color.fromARGB(255, 231, 230, 230))),
            child: Column(
              children: [
                CarouselSlider(
                  items: [
                    Image.asset("assets/locations/placeholder-image.png"),
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
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: SvgPicture.asset(
                            "assets/locations/location-icon.svg")),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 14),
                      child: Text("Kalyani Nagar",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 187, 42, 34),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 8),
                      child: Text(
                          "Fortaleza F Annex Central Avenue,\nKalyani Nagar, Pune 411014",
                          style: TextStyle(
                            fontSize: 12,
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
                              top: 8.0, bottom: 5.0, left: 12, right: 16),
                          child: SvgPicture.asset(
                              "assets/locations/directions-icon.svg")),
                      Text(
                        "Directions",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Text(
                          "|",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 5.0, left: 10, right: 11),
                          child: SvgPicture.asset(
                              "assets/locations/gallery-icon.svg")),
                      Text(
                        "Gallery",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
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
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Color.fromARGB(255, 231, 230, 230))),
            child: Column(
              children: [
                CarouselSlider(
                  items: [
                    Image.asset("assets/locations/placeholder-image.png"),
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
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: SvgPicture.asset(
                            "assets/locations/location-icon.svg")),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 14),
                      child: Text("Shivaji Nagar",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 187, 42, 34),
                          )),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 8),
                      child: Text(
                          "Sancheti Hospital, Main Building,\nPune 411 005.",
                          style: TextStyle(
                            fontSize: 12,
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
                              top: 8.0, bottom: 5.0, left: 12, right: 16),
                          child: SvgPicture.asset(
                              "assets/locations/directions-icon.svg")),
                      Text(
                        "Directions",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Text(
                          "|",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 5.0, left: 10, right: 11),
                          child: SvgPicture.asset(
                              "assets/locations/gallery-icon.svg")),
                      Text(
                        "Gallery",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
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
