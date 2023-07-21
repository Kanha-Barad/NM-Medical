import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/whatsappmessage.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/userdrawer.dart';
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
                          image:
                              AssetImage("assets/promotion/promotion-icon.png"),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("PROMOTION",
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
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PRomoTioNCouPON()));
          },
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 14, 12, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    // width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage("assets/promotion/01.png"),
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Container(
                    color: Color.fromARGB(255, 235, 28, 17),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'PROMO CODE\nNM100',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 4),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 4, left: 8.0, right: 8, bottom: 6),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Blood Test",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              "\u{20B9} 2000",
                              style: TextStyle(
                                  color: Colors.black87,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/promotion/promotion-location-icon.png"),
                                        fit: BoxFit.fitHeight)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Marine Lines",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\u{20B9} 1000",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PRomoTioNCouPON()));
          },
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 14, 12, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    // width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage("assets/promotion/02.png"),
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Container(
                    color: Color.fromARGB(255, 235, 28, 17),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'PROMO CODE\nNM100',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 4),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 4, left: 8.0, right: 8, bottom: 6),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Triglycerides Test",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              "\u{20B9} 2000",
                              style: TextStyle(
                                  color: Colors.black87,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/promotion/promotion-location-icon.png"),
                                        fit: BoxFit.fitHeight)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Bandra",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\u{20B9} 1000",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PRomoTioNCouPON()));
          },
          child: Column(
            children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 14, 12, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    // width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                          image: AssetImage("assets/promotion/03.png"),
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Container(
                    color: Color.fromARGB(255, 235, 28, 17),
                    padding: EdgeInsets.all(4),
                    child: Text(
                      'PROMO CODE\nNM100',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 4),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 4, left: 8.0, right: 8, bottom: 6),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Liver Test",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 187, 42, 34),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Text(
                              "\u{20B9} 2000",
                              style: TextStyle(
                                  color: Colors.black87,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Row(
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/promotion/promotion-location-icon.png"),
                                        fit: BoxFit.fitHeight)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Mohim",
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\u{20B9} 1000",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 42, 34),
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
