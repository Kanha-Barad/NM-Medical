import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/whatsappmessage.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/userdrawer.dart';
import '../customContainer.dart';
import 'PromotionCoupon.dart';

class PRomoTioN extends StatefulWidget {
  const PRomoTioN({super.key});

  @override
  State<PRomoTioN> createState() => _PRomoTioNState();
}

class _PRomoTioNState extends State<PRomoTioN> {
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
          title: "PROMOTION",
          svgAssetPath: "assets/promotion/promotion-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PRomoTioNCouPON()));
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 6, 16, 4),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                    color: Color.fromARGB(255, 209, 207, 207), width: 0.4),
              ),
              child: Column(
                children: [
                  Stack(children: [
                    Image.asset(
                      "assets/promotion/01.png",
                    ),
                    Positioned(
                      top: 20,
                      right: 2,
                      child: Container(
                        color: Color.fromARGB(255, 235, 28, 17),
                        padding: EdgeInsets.all(2),
                        child: Column(
                          children: [
                            Text(
                              'PROMO CODE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'NM100',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
                    child: Row(
                      children: [
                        Text(
                          "Blood Test",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text(
                          "\u{20B9} 2000",
                          style: TextStyle(
                              color: Colors.black87,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 6, 14, 10),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "assets/promotion/promotion-location-icon.svg"),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Marine Lines",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\u{20B9} 1000",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34),
                              decoration: TextDecoration.lineThrough,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PRomoTioNCouPON()));
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 6, 16, 4),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                    color: Color.fromARGB(255, 209, 207, 207), width: 0.4),
              ),
              child: Column(
                children: [
                  Stack(children: [
                    Image.asset(
                      "assets/promotion/02.png",
                    ),
                    Positioned(
                      top: 20,
                      right: 2,
                      child: Container(
                        color: Color.fromARGB(255, 235, 28, 17),
                        padding: EdgeInsets.all(2),
                        child: Column(
                          children: [
                            Text(
                              'PROMO CODE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'NM100',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
                    child: Row(
                      children: [
                        Text(
                          "Triglycerides Test",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text(
                          "\u{20B9} 2000",
                          style: TextStyle(
                              color: Colors.black87,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 6, 14, 10),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "assets/promotion/promotion-location-icon.svg"),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Bandra",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\u{20B9} 1000",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34),
                              decoration: TextDecoration.lineThrough,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PRomoTioNCouPON()));
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 6, 16, 4),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                    color: Color.fromARGB(255, 209, 207, 207), width: 0.4),
              ),
              child: Column(
                children: [
                  Stack(children: [
                    Image.asset(
                      "assets/promotion/03.png",
                    ),
                    Positioned(
                      top: 20,
                      right: 2,
                      child: Container(
                        color: Color.fromARGB(255, 235, 28, 17),
                        padding: EdgeInsets.all(2),
                        child: Column(
                          children: [
                            Text(
                              'PROMO CODE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'NM100',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 8, 14, 0),
                    child: Row(
                      children: [
                        Text(
                          "Liver Test",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Text(
                          "\u{20B9} 2000",
                          style: TextStyle(
                              color: Colors.black87,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(14, 6, 14, 10),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "assets/promotion/promotion-location-icon.svg"),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Mahim",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "\u{20B9} 1000",
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34),
                              decoration: TextDecoration.lineThrough,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
