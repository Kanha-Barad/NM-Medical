import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../userdrawer.dart';

class SelectMumbaiLocation extends StatefulWidget {
  const SelectMumbaiLocation({Key? key}) : super(key: key);

  @override
  State<SelectMumbaiLocation> createState() => _SelectMumbaiLocationState();
}

String dropdownValue1 = 'Mumbai';
String dropdownValue2 = 'Select Subrub';

class _SelectMumbaiLocationState extends State<SelectMumbaiLocation> {
  // Sample data for dropdown options
  List<String> dropdownOptions1 = ['Option 1', 'Option 2', 'Option 3'];
  List<String> dropdownOptions2 = ['Item A', 'Item B', 'Item C'];

  // Selected values for each dropdown
  String selectedValue1 = 'Option 1';
  String selectedValue2 = 'Item A';

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
            Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DropdownButton<String>(
          value: selectedValue1,
          onChanged: (newValue) {
            setState(() {
              selectedValue1 = newValue!;
            });
          },
          items: dropdownOptions1.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        DropdownButton<String>(
          value: selectedValue2,
          onChanged: (newValue) {
            setState(() {
              selectedValue2 = newValue!;
            });
          },
          items: dropdownOptions2.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
    ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 15, top: 15),
        //   child: Text(
        //     'Select City',
        //     style: TextStyle(
        //         color: Color.fromARGB(255, 187, 42, 34),
        //         fontSize: 16,
        //         fontWeight: FontWeight.w700),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        //   child: DropdownButtonFormField(
        //     decoration: InputDecoration(
        //       focusedBorder: UnderlineInputBorder(
        //         borderSide: BorderSide(
        //             color: Color.fromARGB(255, 237, 239, 239), width: 1.5),
        //       ),
        //       filled: true,
        //       // fillColor: Colors.greenAccent,
        //     ),
        //     icon: Icon(
        //       Icons.arrow_drop_down,
        //       color: Color.fromARGB(255, 187, 42, 34),
        //     ),
        //     dropdownColor: Color.fromARGB(255, 237, 239, 239),
        //     value: dropdownValue1,
        //     onChanged: (String? newValue) {
        //       setState(() {
        //         dropdownValue1 = newValue!;
        //       });
        //     },
        //     items: <String>[
        //       'Mumbai',
        //       'Pune',
        //       'Bangalore',
        //     ].map<DropdownMenuItem<String>>((String value) {
        //       return DropdownMenuItem<String>(
        //         value: value,
        //         child: Text(
        //           value,
        //           style: TextStyle(
        //             fontSize: 14,
        //           ),
        //         ),
        //       );
        //     }).toList(),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 15, top: 15),
        //   child: Text(
        //     'Select Subrub',
        //     style: TextStyle(
        //         color: Color.fromARGB(255, 187, 42, 34),
        //         fontSize: 16,
        //         fontWeight: FontWeight.w700),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        //   child: DropdownButtonFormField(
        //     decoration: InputDecoration(
        //       focusedBorder: UnderlineInputBorder(
        //         borderSide: BorderSide(
        //             color: Color.fromARGB(255, 237, 239, 239), width: 1.5),
        //       ),
        //       filled: true,
        //       // fillColor: Colors.greenAccent,
        //     ),
        //     icon: Icon(
        //       Icons.arrow_drop_down,
        //       color: Color.fromARGB(255, 187, 42, 34),
        //     ),
        //     dropdownColor: Color.fromARGB(255, 237, 239, 239),
        //     value: dropdownValue2,
        //     onChanged: (String? newValue) {
        //       setState(() {
        //         dropdownValue2 = newValue!;
        //       });
        //     },
        //     items: <String>[
        //       'Select Subrub',
        //       'Colaba',
        //       'Marine Lines (EVA Health)',
        //       'Marine Lines (Health 360)',
        //       'Chawpatty',
        //       'Matunga',
        //       'Bandra',
        //       'Khar',
        //       'Andheri',
        //       'Malad',
        //       'Borivalli',
        //       'Mulund'
        //     ].map<DropdownMenuItem<String>>((String value) {
        //       return DropdownMenuItem<String>(
        //         value: value,
        //         child: Text(
        //           value,
        //           style: TextStyle(
        //             fontSize: 14,
        //           ),
        //         ),
        //       );
        //     }).toList(),
        //   ),
        // ),
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
                              "assets/location/01.png",
                            ),
                          ),
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        //   margin: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assets/location/02.png",
                            ),
                          ),
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        //   margin: EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(0.0),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              "assets/location/03.png",
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
                      child: Text("Colaba",
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
                          "Poornima, Next to HDFC ATM,\nShahid Bhagat Singh Rd,\nNear Colaba Fire Station,Mumbai,\nMaharashtra 400005 India",
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
                      child: Text("Marine Lines (Eva Health)",
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
                          "Kimatrai House, Maharshi Karve Rd,\nMarine Lines, next to Health 360,\nMarine Lines, Mumbai,\nMaharashtra 400002 India",
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
                      child: Text("Marine Lines (Health 360)",
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
                          "55, Maharshi Karve Rd,\nMarine Lines, next to icici bank,\nMarine Lines, Mumbai,\nMaharashtra 400002 India",
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
                      child: Text("Chowpatty",
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
                          "Mehta House, 36,\nPandita Ramabai Road Chowpatty,\nDadi Sheth Wadi, Malabar Hill,Mumbai,\nMaharashtra 400007, India",
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
                      child: Text("Parel",
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
                          "Opp Motilal Oswal Tower,Gokhale Road South,\nNext to ST Bus Depot,\nParel W, Babasaheb Ambedkar Nagar,\nMumbai, Maharashtra 400025, India",
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
                      child: Text("Matunga",
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
                          "Shop No. 4,\nMangal Co-operative Housing Society,\nR A Kidwai Road,\nNext to Amulak Amichand School,\nNear SNDT College, Matunga,\nMumbai, Maharashtra 400019 India",
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
                      child: Text("Bandra",
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
                          "SGround Floor, Sham Sunder Building,\n27th Road Opposite Shoppers Stop,\nOff Linking Rd, Bandra West,\nMumbai, Maharashtra 400050, India",
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
                      child: Text("Khar",
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
                          "Junction of 14th and 33rd Road,Off Linking Road,\nAbove Bombay Blue Restaurant,Bandra West,\nMumbai, Maharashtra 400052, India",
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
                      child: Text("Andheri",
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
                          "B-13, Aver Plaza,Ground Floor,Opp.Citi Mall,\nBehind Maruti Showroom,New Link Rd,\nVeera Desai Industrial Estate,Andheri West,\nMumbai, Maharashtra 400053",
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
                      child: Text("Malad",
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
                          "Ground Floor, Sej Plaza,\nMarve Road, Next To Nutan High School,\nMalad West, Mahavir Nagar, Malad West,\nMumbai, Maharashtra 400064, India",
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
