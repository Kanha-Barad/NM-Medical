import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../customContainer.dart';
import '../phoneCallwidget.dart';

class SelectMumbaigallery extends StatefulWidget {
  const SelectMumbaigallery({Key? key}) : super(key: key);

  @override
  State<SelectMumbaigallery> createState() => _SelectMumbaigalleryState();
}

class _SelectMumbaigalleryState extends State<SelectMumbaigallery> {
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
          title: "GALLERY",
          svgAssetPath: "assets/gallery/gallery-title.svg",
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
                      PhoneCallWidget(
                        phoneNumber: '+91 992 029 9205',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4907 9999',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4907 9999',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4342 5555',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4966 2222',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 84337 36456',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4342 6666',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4342 8888',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4613 2222',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4613 3333',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4342 4444',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 22 4342 7777',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 000 000 0000',
                      )
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
                      PhoneCallWidget(
                        phoneNumber: '+91 86574 14376',
                      )
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
