import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneNumberWidget extends StatelessWidget {
  final String phoneNumber;

  PhoneNumberWidget({required this.phoneNumber});

  void _makePhoneCall() async {
    if (await canLaunch("tel:$phoneNumber")) {
      await launch("tel:$phoneNumber");
    } else {
      throw "Could not launch phone call.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 5.0, left: 10, right: 11),
      child: GestureDetector(
        onTap: _makePhoneCall,
        child: Row(
          children: [
            SvgPicture.asset("assets/gallery/phone-call-icon.svg"),
            SizedBox(
                width:
                    8), // Add some space between the icon and the phone number
            Text(
              phoneNumber,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
