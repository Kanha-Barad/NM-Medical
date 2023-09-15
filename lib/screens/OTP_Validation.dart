import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/nm_home.dart';
import 'package:nmmedical/widgets/userdrawer/profile.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../AuthProvider.dart';
import '../models/Mobile_Login_Module.dart';
import '../models/OTP_Validation_Module.dart';

class OTPValidationPage extends StatefulWidget {
  final LoginResponse response;
  final String mobileNumber;

  OTPValidationPage(this.response, this.mobileNumber);
  @override
  _OTPValidationPageState createState() => _OTPValidationPageState();
}

class _OTPValidationPageState extends State<OTPValidationPage> {
  // final TextEditingController otpController = TextEditingController();
  List<TextEditingController> otpControllers =
      List.generate(4, (index) => TextEditingController());
  bool _isVerifying = false; // Flag to track OTP verification process

  void _validateOTP(BuildContext context) async {
    if (_isVerifying) {
      // If OTP verification is already in progress, return and prevent multiple clicks
      return;
    }
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    try {
      String enteredOTP =
          otpControllers.map((controller) => controller.text).join();
      String enteredMobileNO = widget.response.MOBILE_NO.toString();

      if (enteredOTP.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please enter the OTP before verifying.'),
          ),
        );
        return;
      }

      // Set the flag to true to indicate that OTP verification is in progress
      setState(() {
        _isVerifying = true;
      });

      await authProvider.validateOTP(
          widget.response.MSG_ID.toString(), enteredOTP);
      List<OTPValidationResponse> ValidresponseFORReGisterMOBILEnUMber =
          await authProvider.getStoredOTPValidationResponses();
      if (widget.response.OTP.toString() == enteredOTP &&
          ValidresponseFORReGisterMOBILEnUMber.length > 0) {
        // OTP validation successful
        final authProvider = Provider.of<AuthProvider>(context, listen: false);
        authProvider.setLoggedIn(true); // Update the login status
        authProvider
            .saveLoginStatus(true); // Save login status to shared preferences
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => NMHome()),
        );
      } else if (widget.response.OTP.toString() == enteredOTP &&
          ValidresponseFORReGisterMOBILEnUMber.length == 0) {
        final authProvider = Provider.of<AuthProvider>(context, listen: false);
        authProvider.setLoggedIn(true); // Update the login status
        authProvider
            .saveLoginStatus(true); // Save login status to shared preferences
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => pRofilE(
                    widget.response,
                    enteredMobileNO,
                  )),
        );
      } else {
        // Handle OTP validation failure
        print("OTP validation failed");
        // You can also show an error message to the user if needed
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('OTP validation failed'),
          ),
        );
      }
    } catch (error) {
      // Handle error while validating OTP
      print("Error during OTP validation: $error");
    } finally {
      // Set the flag back to false when OTP verification is complete
      setState(() {
        _isVerifying = false;
      });
    }
  }

  @override
  void dispose() {
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                width: 95,
                height: 123,
                child: SvgPicture.asset("assets/images/nm-logo.svg")),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 8),
              child: Text(
                "OTP",
                style: TextStyle(
                    height: 1.2, fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                "Varification",
                style: TextStyle(
                    height: 1.5, fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Container(
                  width: 70.0,
                  height: 50.0,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: otpControllers[index].text.isNotEmpty
                            ? Colors.grey
                                .withOpacity(0.4) // Color when text is present
                            : Colors.grey
                                .withOpacity(0.4), // Color when no text
                        width: 2.0, // Underline width
                      ),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    controller: otpControllers[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                    decoration: InputDecoration(
                      counterText: '',
                      border: InputBorder.none, // Remove the border
                      focusedBorder: InputBorder.none,
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    maxLength: 1,
                    //cursorColor: Colors.white,
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 3) {
                        FocusScope.of(context).nextFocus();
                      } else if (value.isEmpty && index > 0) {
                        FocusScope.of(context).previousFocus();
                      }
                    },
                    autofocus: index == 0,
                  ),
                );
              }),
            ),
            GestureDetector(
              onTap: () => _validateOTP(context),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Card(
                  color: Color.fromARGB(255, 237, 28, 36),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                    child: Text(
                      "VERIFY",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}



// Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: List.generate(4, (index) {
            //     return Container(
            //       width: 40.0,
            //       height: 60.0,
            //       alignment: Alignment.center,
            //       child: TextFormField(
            //         controller: otpControllers[index],
            //         textAlign: TextAlign.center,
            //         style: TextStyle(fontSize: 20.0),
            //         decoration: InputDecoration(
            //           counterText: '',
            //           enabledBorder: UnderlineInputBorder(
            //             borderSide: BorderSide(color: Colors.grey),
            //             // borderRadius: BorderRadius.circular(8.0),
            //           ),
            //           focusedBorder: UnderlineInputBorder(
            //             borderSide: BorderSide(color: Colors.blue),
            //             borderRadius: BorderRadius.circular(8.0),
            //           ),
            //         ),
            //         keyboardType: TextInputType.number,
            //         inputFormatters: [
            //           FilteringTextInputFormatter.digitsOnly,
            //         ],
            //         maxLength: 1,
            //         onChanged: (value) {
            //           if (value.isNotEmpty && index < 3) {
            //             FocusScope.of(context).nextFocus();
            //           }
            //         },
            //       ),
            //     );
            //   }),
            // ),