import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../customContainer.dart';

class SelectMumbaiLocation extends StatefulWidget {
  const SelectMumbaiLocation({Key? key}) : super(key: key);

  @override
  State<SelectMumbaiLocation> createState() => _SelectMumbaiLocationState();
}

class _SelectMumbaiLocationState extends State<SelectMumbaiLocation> {
  // Sample data for dropdown options
  List<String> dropdownOptions1 = [
    'Mumbai',
    'Pune',
    'Bangalore',
  ];
  List<String> dropdownOptions2 = [
    'Select Subrub',
    'Colaba',
    'Marine Lines (EVA Health)',
    'Marine Lines (Health 360)',
    'Chawpatty',
    'Matunga',
    'Bandra',
    'Khar',
    'Andheri',
    'Malad',
    'Borivalli',
    'Mulund'
  ];

  // Selected values for each dropdown
  String selectedValue1 = 'Mumbai';
  String selectedValue2 = 'Select Subrub';

  bool isUserProfileIconClicked = false;

  // Function to handle user-profile icon tap
  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("","",onUserProfileIconTap: handleUserProfileIconTap,),
     endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
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
          padding: const EdgeInsets.only(top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select City',
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
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
                        child: Text(
                          value,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      );
                    }).toList(),
                    iconEnabledColor: Color.fromARGB(255, 187, 42, 34),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Suburb',
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
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
                        child: Text(
                          value,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      );
                    }).toList(),
                    iconEnabledColor: Color.fromARGB(255, 187, 42, 34),
                  ),
                ],
              ),
            ],
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
                    Image.asset("assets/locations/01.png"),
                    Image.asset("assets/locations/02.png"),
                    Image.asset("assets/locations/03.png"),
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
                      child: Text("Colaba",
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
                          "Poornima, Next to HDFC ATM,\nShahid Bhagat Singh Rd,\nNear Colaba Fire Station,Mumbai,\nMaharashtra 400005 India",
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
                      child: Text("Marine Lines (Eva Health)",
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
                          "Kimatrai House, Maharshi Karve Rd,\nMarine Lines, next to Health 360,\nMarine Lines, Mumbai,\nMaharashtra 400002 India",
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
                      child: Text("Marine Lines (Health 360)",
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
                          "55, Maharshi Karve Rd,\nMarine Lines, next to icici bank,\nMarine Lines, Mumbai,\nMaharashtra 400002 India",
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
                      child: Text("Chowpatty",
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
                          "Mehta House, 36,\nPandita Ramabai Road Chowpatty,\nDadi Sheth Wadi, Malabar Hill,Mumbai,\nMaharashtra 400007, India",
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
                      child: Text("Parel",
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
                          "Opp Motilal Oswal Tower,Gokhale Road South,\nNext to ST Bus Depot,\nParel W, Babasaheb Ambedkar Nagar,\nMumbai, Maharashtra 400025, India",
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
                      child: Text("Matunga",
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
                          "Shop No. 4,\nMangal Co-operative Housing Society,\nR A Kidwai Road,\nNext to Amulak Amichand School,\nNear SNDT College, Matunga,\nMumbai, Maharashtra 400019 India",
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
                      child: Text("Bandra",
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
                          "SGround Floor, Sham Sunder Building,\n27th Road Opposite Shoppers Stop,\nOff Linking Rd, Bandra West,\nMumbai, Maharashtra 400050, India",
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
                      child: Text("Khar",
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
                          "Junction of 14th and 33rd Road,Off Linking Road,\nAbove Bombay Blue Restaurant,Bandra West,\nMumbai, Maharashtra 400052, India",
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
                      child: Text("Andheri",
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
                          "B-13, Aver Plaza,Ground Floor,Opp.Citi Mall,\nBehind Maruti Showroom,New Link Rd,\nVeera Desai Industrial Estate,Andheri West,\nMumbai, Maharashtra 400053",
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
                      child: Text("Malad",
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
                          "Ground Floor, Sej Plaza,\nMarve Road, Next To Nutan High School,\nMalad West, Mahavir Nagar, Malad West,\nMumbai, Maharashtra 400064, India",
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
                      child: Text("Borivali",
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
                          "Swastik Bldg, 18/6, R C Patel Road,\nChandavarkar Cr. Rd. No. 2, Next to ICICI Bank,\nBorivali (West), Roshan Nagar, Borivali, Mumbai,\nMaharashtra 400091, India",
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
                      child: Text("Mulund",
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
                          "No. 820, 8th Floor, Corporate Centre Nirmal\nLifestyles Mall, L B S Marg, Mulund West,\nMoti Nagar, Mulund Colony, Mulund West,\nMumbai, Maharashtra 400080, India",
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
                      child: Text("Vikhroli",
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
                          "Shushrusha Hospital 201, Rd Number 1,\nKannamwar Nagar I, Vikhroli East, Mumbai,\nMaharashtra 400083, India",
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
                      child: Text("Vashi",
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
                          "Palm Beach Galleria Mall, 1st Flr, #102,\nPalm Beach Rd, Phase 2, Sector 19D,\nVashi, Navi Mumbai, Maharashtra 400703, India",
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
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
