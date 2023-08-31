import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/OTP_Validation.dart';
import 'package:provider/provider.dart';

import '../AuthProvider.dart';

class MobileNumberPage extends StatefulWidget {
  @override
  _MobileNumberPageState createState() => _MobileNumberPageState();
}

class _MobileNumberPageState extends State<MobileNumberPage> {
  final TextEditingController _mobileController = TextEditingController();

  void _login(BuildContext context) async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    try {
      final loginResponse = await authProvider.login(_mobileController.text);

      if (loginResponse != null) {
        // Successful login, navigate to OTP validation screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                OTPValidationPage(loginResponse, _mobileController.text),
          ),
        );
      } else {
        // Handle login failure
      }
    } catch (error) {
      // Handle error
    }
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
                  "Login",
                  style: TextStyle(
                      height: 1.2, fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  "Enter Your Mobile Number",
                  style: TextStyle(
                      height: 1.5, fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              TextFormField(
                controller: _mobileController,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(
                            255, 209, 207, 207)), // Inactive color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color:
                            Color.fromARGB(255, 104, 104, 104)), // Active color
                  ),
                ),
                cursorColor: Color.fromARGB(255, 222, 222, 222),
                keyboardType: TextInputType.phone,
               // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your mobile number';
                  }
                  return null;
                },
              ),
              GestureDetector(
                onTap: () => _login(context),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Card(
                    color: Color.fromARGB(255, 237, 28, 36),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
                      child: Text(
                        "SUBMIT",
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
              // ElevatedButton(
              //   onPressed: () => _login(context),
              //   child: Text('Login'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
