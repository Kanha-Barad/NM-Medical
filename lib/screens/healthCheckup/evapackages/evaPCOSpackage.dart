import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import '../../../widgets/Enquary.dart';
import '../../../widgets/forMoreInformation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../../../widgets/customContainer.dart';
import '../../../widgets/packageinvestmentwidget.dart';

class EVaPCOSpackage extends StatefulWidget {
  const EVaPCOSpackage({super.key});

  @override
  State<EVaPCOSpackage> createState() => _EVaPCOSpackageState();
}

class _EVaPCOSpackageState extends State<EVaPCOSpackage> {
  bool isUserProfileIconClicked = false;
  bool isMenuClicked = false;

  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
      isMenuClicked = false; // Reset menu icon click state
    });
  }

  // Function to handle menu icon tap
  void handleMenuIconTap() {
    setState(() {
      isMenuClicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        "",
        "",
        onUserProfileIconTap: handleUserProfileIconTap,
        onMenuIconTap: handleMenuIconTap,
      ),
      endDrawer: AppDrawer(
        isUserIconClicked: isUserProfileIconClicked,
        isMenuIconClicked: isMenuClicked,
      ),
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomContainerBarDelegate(
            title: "EVA PCOS PACKAGE",
            svgAssetPath: "assets/eva-packages/eva-infertility2.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              CustomWidgetInvestmentContainer(
                  InvesmentTitle: "Special Price",
                  onEnquirenowButtonPressed: () {},
                  InvestmentValue: 15000),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Routine Blood Tests",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("CBC + ESR",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),

              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Diabetic Profile",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Fasting Blood Sugar",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("HbA1C",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Thyroid Panel",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("TSH",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),

              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Vitamin Markers",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Vitamin D",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 2, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Vitamin B12",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 8, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SvgPicture.asset(
                          "assets/images/sub-level-bullet-icons.svg"),
                    ),
                    Text("Iron Studies",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400))
                  ],
                ),
              ),

              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Specialised Blood Tests",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Dihydrotestosterone",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Cortisol",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("17 OH Progesterone",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Testosterone",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Androstenedione",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("DHEAS",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Prolactin",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),

              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Diagnostic Tests",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    const Text("Abdomen & Pelvic Sonography",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500))
                  ],
                ),
              ),
              const Divider(indent: 10, endIndent: 10, thickness: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                child: Text("Consultations",
                    style: TextStyle(
                        color: Color.fromARGB(255, 187, 42, 34),
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 0, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: SvgPicture.asset("assets/images/bullet-icons.svg"),
                    ),
                    Expanded(
                      child: Text(
                          "Gynaecologist consultation from an expert panel of doctors (Optional)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
              //   child: Text("Cooming Soon", style: TextStyle(fontSize: 14)),
              // ),
              Divider(
                indent: 10,
                endIndent: 10,
                thickness: 1,
              ),
              FormoreInformation(context, ""),
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
