import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppWidget extends StatelessWidget {
  final String phoneNumber;

  WhatsAppWidget({required this.phoneNumber});

  void _openWhatsAppChat() async {
    final whatsappUrl = "https://wa.me/$phoneNumber";

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      // Handle the case where WhatsApp is not installed on the device.
      print('WhatsApp is not installed.');
    }
  }
  void openWhatsApp({
  required BuildContext context,
  required String text,
  required String number,
}) async {
  String phoneNumber = number;
  String whatsappUrl = "https://wa.me/$phoneNumber?text=${Uri.encodeComponent(text)}";
  String whatsappUrlAndroid = "whatsapp://send?phone=$phoneNumber&text=${Uri.encodeComponent(text)}";

  if (Platform.isIOS) {
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("WhatsApp not installed")),
      );
    }
  } else {
    // Android and Web
    if (await canLaunch(whatsappUrlAndroid)) {
      await launch(whatsappUrlAndroid);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("WhatsApp is not installed")),
      );
    }
  }
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 8.0, bottom: 5.0, left: 10, right: 11),
      child: GestureDetector(
        onTap: _openWhatsAppChat,
        child: Row(
          children: [
            SvgPicture.asset("assets/images/whatsapp-icon.svg"),
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
