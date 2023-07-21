import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

void openWhatsapp(
    {required BuildContext context,
    required String text,
    required String number}) async {
  var whatsapp = number; //+92xx enter like this
  var whatsappURlAndroid = "whatsapp://send?phone=" + whatsapp + "&text=$text";
  var whatsappURLIos = "https://wa.me/$whatsapp?text=${Uri.tryParse(text)}";
  if (Platform.isIOS) {
    // for iOS phone only
    if (await canLaunchUrl(Uri.parse(whatsappURLIos))) {
      await launchUrl(Uri.parse(
        whatsappURLIos,
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Whatsapp not installed")));
    }
  } else {
    // android , web
    if (await canLaunchUrl(Uri.parse(whatsappURlAndroid))) {
      await launchUrl(Uri.parse(whatsappURlAndroid));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Whatsapp not installed")));
    }
  }
}

Widget WhatsApp(BuildContext context) => Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 12),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'For more information WhatsApp on ',
            style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400)),
        WidgetSpan(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              height: 12,
              width: 12,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("assets/247support/whatsapp-icon.png"),
                    fit: BoxFit.fitHeight,
                  )),
            ),
          ),
        ),
        TextSpan(
            text: '9256855758',
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 187, 42, 34),
                decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                openWhatsapp(
                    context: context, text: '', number: '+919256855758');
              }),
        TextSpan(
            text: ' or visit ',
            style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400)),
        TextSpan(
            text: 'www.nmmedical.com',
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 187, 42, 34),
                decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch('https://www.nmmedical.com/');
              }),
      ])),
    );
