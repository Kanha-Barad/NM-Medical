import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class PhoneCallWidget extends StatelessWidget {
  final String phoneNumber;

  PhoneCallWidget({required this.phoneNumber});

  void _makePhoneCall(BuildContext context) async {
    bool? res = await FlutterPhoneDirectCaller.callNumber(phoneNumber);
    if (res != null && !res) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to make a phone call")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _makePhoneCall(context),
      child: Text(
        phoneNumber,
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
