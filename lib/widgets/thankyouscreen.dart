import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/customContainer.dart';

import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'bottom_navigation.dart';

String bill_NUMBER = "";
String BIll_DATE = "";
String Address = "";

class ThankYou extends StatefulWidget {
  ThankYou(bill_no, bill_DT, ADDREss) {
    bill_NUMBER = "";
    BIll_DATE = "";
    Address = "";
    bill_NUMBER = bill_no;
    BIll_DATE = bill_DT;
    Address = ADDREss;
  }

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
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
              title: "THANK YOU",
              svgAssetPath: "assets/thankyou/thankyou-title.svg"),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(children: [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: SvgPicture.asset("assets/thankyou/thankyou-icon.svg")),
          const Text(
            'Thank You!\nYour Home Visit Slot Has Been Booked.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 187, 42, 34),
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 70, 10, 4),
            child: Row(
              children: [
                Text('Order Number',
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Text('$bill_NUMBER',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1.8,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 10, 4),
            child: Row(
              children: [
                Text('Enquiry Date',
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                Padding(
                    padding: EdgeInsets.only(left: 108.0),
                    child: Text('$BIll_DATE',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500)))
              ],
            ),
          ),
          const Divider(
            thickness: 1.8,
            indent: 10,
            endIndent: 10,
          ),
          (Address != "null" && Address != "")
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(12, 10, 10, 4),
                  child: Row(
                    children: [
                      Text('Enquiry Address',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500)),
                      Padding(
                          padding: EdgeInsets.only(left: 88.0),
                          child: SizedBox(
                              width: 148,
                              child: Text(Address,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500))))
                    ],
                  ))
              : Container(),
          (Address != "null" && Address != "")
              ? Divider(
                  thickness: 1.8,
                  indent: 10,
                  endIndent: 10,
                )
              : Container()
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(12, 10, 10, 4),
          //   child: Row(
          //     children: const [Text('Total Amount'), Spacer(), Text('₹5,300')],
          //   ),
          // ),
          // const Divider(
          //   thickness: 1.8,
          //   indent: 10,
          //   endIndent: 10,
          // ),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(12, 10, 10, 4),
          //   child: Row(
          //     children: const [
          //       Text('Payment Method'),
          //       Spacer(),
          //       Text('Cash On Delivery')
          //     ],
          //   ),
          // ),
          // const Divider(
          //   thickness: 1.8,
          //   indent: 10,
          //   endIndent: 10,
          // ),
        ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}
