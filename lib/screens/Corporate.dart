import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/whatsappWidget.dart';
import '../widgets/forMoreInformation.dart';

import '../../../widgets/app_drawer.dart';
import '../../../widgets/basic_appbar.dart';
import '../widgets/customContainer.dart';

class CorPORatE extends StatefulWidget {
  const CorPORatE({super.key});

  @override
  State<CorPORatE> createState() => _CorPORatEState();
}

class _CorPORatEState extends State<CorPORatE> {
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
            title: "CORPORATE",
            svgAssetPath: "assets/corporate/corporate-title.svg",
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
              Padding(
                  padding: const EdgeInsets.fromLTRB(15, 14, 15, 12),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'For any corporate enquiry WhatsApp on ',
                          style: TextStyle(
                              //letterSpacing: 0.5,
                              fontSize: 14,
                              height: 1.7,
                              color: Color.fromARGB(255, 85, 85, 85),
                              fontWeight: FontWeight.bold)),
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0, right: 2),
                          child: Container(
                              height: 15,
                              width: 15,
                              child: SvgPicture.asset(
                                  "assets/images/whatsapp-icon.svg")),
                        ),
                      ),
                      TextSpan(
                          text: '9256855758',
                          style: TextStyle(
                              //letterSpacing: 0.03,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 1.7,
                              color: Color.fromARGB(255, 190, 51, 43),
                              decoration: TextDecoration.underline),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              WhatsAppWidget(phoneNumber: "9256855758");
                            }),
                    ]),
                  )),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
              //   child: Text(
              //     "Cooming Soon",
              //     style: TextStyle(fontSize: 14),
              //   ),
              // ),
              Divider(
                indent: 15,
                endIndent: 15,
                thickness: 1.5,
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
