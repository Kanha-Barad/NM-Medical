import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsAppWidget extends StatelessWidget {
  final String phoneNumber;
  final String text;

  WhatsAppWidget({required this.phoneNumber, this.text = ''});

  void _openWhatsApp(BuildContext context) async {
    var whatsappURL =
        "https://wa.me/$phoneNumber?text=${Uri.encodeComponent(text)}";
    if (await canLaunch(whatsappURL)) {
      await launch(whatsappURL);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("WhatsApp is not installed")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openWhatsApp(context),
      child: Row(
        children: [
          Text(phoneNumber,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0)),
        ],
      ),
    );
  }
}
