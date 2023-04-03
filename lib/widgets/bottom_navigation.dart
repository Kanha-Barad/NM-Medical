import 'package:flutter/material.dart';

import '../screens/nm_home.dart';

class AllBottomNavigationBar extends StatefulWidget {
  @override
  State<AllBottomNavigationBar> createState() => _AllBottomNavigationBarState();
}

class _AllBottomNavigationBarState extends State<AllBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 187, 42, 34),
        height: 65,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 12, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NMHome()));
                },
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Container(
                      height: 22,
                      width: 20,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/navigationbar/home-icon.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ]),
              ),
              InkWell(
                onTap: () {},
                child: Column(children: [
                  Container(
                    height: 23,
                    width: 24,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/navigationbar/payment-icon.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Payments",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ]),
              ),
              InkWell(
                onTap: () {},
                child: Column(children: [
                  Container(
                    height: 24,
                    width: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/navigationbar/report-icon.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Report",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ]),
              ),
              InkWell(
                onTap: () {},
                child: Column(children: [
                  Container(
                    height: 24,
                    width: 22,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/navigationbar/loyalty-program-icon.png"),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "Loyality Program",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ]),
              ),
              InkWell(
                onTap: () {},
                child: Column(children: [
                  Container(
                    height: 25,
                    width: 22,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/navigationbar/promotion-icon.png"),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Promotion",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
