import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

void openWhatsapp({
  required BuildContext context,
  required String text,
  required String number,
}) async {
  var whatsapp = number;
//  var encodedText = Uri.encodeComponent(text);
  var whatsappURLIos =
      "https://wa.me/$whatsapp?text=${Uri.encodeComponent(text)}"; // Use Uri.encodeComponent(text) for iOS
  if (Platform.isIOS) {
    // for iOS phone only
    if (await canLaunch(whatsappURLIos)) {
      // Updated to launch whatsappURLIos directly
      await launch(whatsappURLIos); // Updated to launch whatsappURLIos directly
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Whatsapp not installed")));
    }
  } else {
    // For Android and other platforms, use the web URL
    var whatsappURL =
        "https://wa.me/$whatsapp?text=${Uri.encodeComponent(text)}";
    print(
        "FormoreInformation URL: $whatsappURL"); // Add this line to print the URL

    if (await canLaunch(whatsappURL)) {
      await launch(whatsappURL);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Whatsapp is not installed")),
      );
    }
  }
}

String NINEEmial = "";

Widget FormoreInformation(BuildContext context, NinemOnEmial) {
  NINEEmial = "";
  NINEEmial = NinemOnEmial;
  return Padding(
    padding: const EdgeInsets.fromLTRB(15, 8, 15, 12),
    child: RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'For more information WhatsApp on ',
          style: TextStyle(
              letterSpacing: 0.5,
              fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w400)),
      WidgetSpan(
        child: Padding(
          padding: const EdgeInsets.only(left: 3.0, right: 2),
          child: Container(
              height: 15,
              width: 15,
              child: SvgPicture.asset("assets/images/whatsapp-icon.svg")),
        ),
      ),
      TextSpan(
          text: '9256855758',
          style: TextStyle(
            letterSpacing: 0.03,
              fontSize: 14,
              height: 1.5,
              color: Color.fromARGB(255, 187, 42, 34),
              decoration: TextDecoration.underline),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              openWhatsapp(context: context, text: '', number: '9256855758');
            }),
      TextSpan(
          text: ' or visit ',
          style: TextStyle(
              letterSpacing: 0.5,
              fontSize: 14,
              height: 1.5,
              color: Colors.grey,
              fontWeight: FontWeight.w400)),
      (NINEEmial == "NMTH")
          ? TextSpan(
              text: 'www.ninemonthspregnancy.com',
              style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Color.fromARGB(255, 187, 42, 34),
                  decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch('https://www.ninemonthspregnancy.com/');
                })
          : TextSpan(
              text: 'www.nmmedical.com',
              style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  color: Color.fromARGB(255, 187, 42, 34),
                  decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch('https://www.nmmedical.com/');
                }),
    ])),
  );
}
