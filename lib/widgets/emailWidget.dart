import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailWidget extends StatelessWidget {
  final String email;

  EmailWidget({required this.email});

  void _sendEmail(BuildContext context) async {
    var emailURL = "mailto:$email";
    if (await canLaunch(emailURL)) {
      await launch(emailURL);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to send an email")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _sendEmail(context),
      child: Text(
        email,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 13.0,
          //decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
