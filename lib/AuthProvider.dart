import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nmmedical/screens/NM_Login.dart';

import 'controllers/Mobile_Login_Controller.dart';
import 'controllers/OTP_Validation_Controller.dart';
import 'models/Mobile_Login_Module.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/OTP_Validation_Module.dart';

class AuthProvider extends ChangeNotifier {
  final LoginController _loginController = LoginController();

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  LoginResponse? _loginResponse;
  LoginResponse? get loginResponse => _loginResponse;

  void setLoggedIn(bool value) {
    _isLoggedIn = value;
    notifyListeners();
  }

  Future<void> loadLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    notifyListeners();
  }

  Future<void> saveLoginStatus(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLoggedIn', value);
    notifyListeners();
  }

  void saveLoginResponse(LoginResponse response) {
    _loginResponse = response;
    notifyListeners();
  }

  Future<void> loadLoginResponse() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? responseJson = prefs.getString('loginResponse');
    if (responseJson != null) {
      final Map<String, dynamic> responseMap = json.decode(responseJson);
      _loginResponse = LoginResponse.fromJson(responseMap);
      notifyListeners();
    }
  }

  Future<LoginResponse?> login(String mobile) async {
    try {
      final loginResponse =
          await _loginController.fetchLoginMobileNumber(mobile);

      if (loginResponse != null) {
        saveLoginResponse(loginResponse);
        saveLoginStatus(true); // Set login status to true
      }

      return loginResponse;
    } catch (error) {
      print("Login error: $error");
      return null;
    }
  }

  void logout(BuildContext context) {
  this.setLoggedIn(false); // Update the login status
  this.saveLoginStatus(false); // Save login status to shared preferences
  this._loginResponse = null; // Clear login response

  // Navigate to the login screen
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => MobileNumberPage()),
  );
}

  Future<List<OTPValidationResponse>> getStoredOTPValidationResponses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? otpValidationResponsesJson =
        prefs.getString('otpValidationResponses');

    if (otpValidationResponsesJson != null) {
      List<dynamic> responseData = jsonDecode(otpValidationResponsesJson);
      List<OTPValidationResponse> otpValidationResponses =
          responseData.map((otpMap) {
        return OTPValidationResponse(
          CNT: otpMap["CNT"].toString(),
          SESSION_ID: otpMap["SESSION_ID"].toString(),
          MOBILE_NO1: otpMap["MOBILE_NO1"].toString(),
          GENDER: otpMap["GENDER"].toString(),
          ADDRESS1: otpMap["ADDRESS1"].toString(),
          EMAIL_ID: otpMap["EMAIL_ID"].toString(),
          DISPLAY_NAME: otpMap["DISPLAY_NAME"].toString(),
          DOB: otpMap["DOB"].toString(),
          UMR_NO: otpMap["UMR_NO"].toString(),
          AGE: otpMap["AGE"].toString(),
        );
      }).toList();
      return otpValidationResponses;
    } else {
      return [];
    }
  }

  Future<bool> validateOTP(String msgId, String otp) async {
    try {
      // Call the OTP validation API
      final otpValidationResponse =
          await OTPValidationController.validateOTP(msgId, otp);

      // Check if the response contains 'status' and 'message' fields indicating success
      // if (int.parse(otpValidationResponse.CNT) > 0 &&
      //     otpValidationResponse.SESSION_ID.isNotEmpty) {
      //   // Update the login status to indicate the user is logged in
      //   // if(otpValidationResponse){
      //   setLoggedIn(true);

      //   SharedPreferences prefs = await SharedPreferences.getInstance();
      //   prefs.setString('CNT', otpValidationResponse.CNT.toString());
      //   prefs.setString(
      //       'SESSIONID', otpValidationResponse.SESSION_ID.toString());
      //   prefs.setString(
      //       'MOBILENO', otpValidationResponse.MOBILE_NO1.toString());
      //   prefs.setString('ADDRESS', otpValidationResponse.ADDRESS1.toString());
      //   prefs.setString('EMAILID', otpValidationResponse.EMAIL_ID.toString());
      //   prefs.setString('GENDER', otpValidationResponse.GENDER.toString());
      //   prefs.setString(
      //       'DISPLAY_NAME', otpValidationResponse.DISPLAY_NAME.toString());
      //   prefs.setString('DOB', otpValidationResponse.DOB.toString());
      //   prefs.setString('UMR_NO', otpValidationResponse.UMR_NO.toString());

      // String? mm = await pref.getString("loginData");
      // otpData = OTPValidationResponse.fromJson(jsonDecode(mm ?? "{}"));
      return true;
      // } else {
      //   return false;
      // }
    } catch (error) {
      print("OTP validation error: $error");
      return false;
    }
  }
}



/**-----------------------this is for logout -------------------------------------- */
//   void _logout(BuildContext context) {
//   final authProvider = Provider.of<AuthProvider>(context, listen: false);

//   // Clear the OTP validation response and set the logged out state
//   authProvider.setOTPValidationResponse(null);
//   authProvider.setLoggedIn(false);

//   // ... Your navigation code ...
// }

/**-----------------------this is for logout -------------------------------------- */

  // Shared preferences instance
//   SharedPreferences? _prefs;

//   // Initialize shared preferences
//   Future<void> _initPrefs() async {
//     if (_prefs == null) {
//       _prefs = await SharedPreferences.getInstance();
//     }
//   }
//   // Check if the user is already logged in
//   Future<void> checkLoginStatus() async {
//     await _initPrefs();
//     _isLoggedIn = _prefs?.getBool('isLoggedIn') ?? false;
//     notifyListeners();
//   }
//    // Save login status
//   Future<void> saveLoginStatus() async {
//     await _initPrefs();
//     _prefs?.setBool('isLoggedIn', _isLoggedIn);
//   }
//  // Save validation response
//   Future<void> saveValidationResponse(LoginResponse response) async {
//     await _initPrefs();
//     _prefs?.setInt('msgId', response.MSG_ID.toInt());
//     _prefs?.setString('otp', response.OTP);
//   }

//   // Retrieve validation response
//   Future<LoginResponse?> getValidationResponse() async {
//     await _initPrefs();
//     final int? msgId = _prefs?.getInt('msgId');
//     final String? otp = _prefs?.getString('otp');
//     if (msgId != null && otp != null) {
//       return LoginResponse(MSG_ID: msgId.toDouble(), OTP: otp);
//     }
//     return null;
//   }


// SharedPreferences? _prefs;

//   Future<void> _initPrefs() async {
//     if (_prefs == null) {
//       _prefs = await SharedPreferences.getInstance();
//     }
//   }

//   // Check if the user is already logged in
//   Future<void> checkLoginStatus() async {
//     await _initPrefs();
//     _isLoggedIn = _prefs?.getBool('isLoggedIn') ?? false;
//     notifyListeners();
//   }

//   // Save login status
//   Future<void> saveLoginStatus() async {
//     await _initPrefs();
//     _prefs?.setBool('isLoggedIn', _isLoggedIn);
//   }

//   // ... Your other methods ...

//   // Save validation response
//   Future<void> saveValidationResponse(OTPValidationResponse response) async {
//     await _initPrefs();
//     _prefs?.setString('count', response.CNT);
//     _prefs?.setString('sessionID', response.SESSION_ID);
//     _prefs?.setString('MobNO', response.MOBILE_NO1);
//     _prefs?.setString('address', response.ADDRESS1);
//     _prefs?.setString('gender', response.GENDER);
//     _prefs?.setString('emailID', response.EMAIL_ID);
//     _prefs?.setString('DisplayNAME', response.DISPLAY_NAME);
//     _prefs?.setString('DOB', response.DOB);
//     _prefs?.setString('UMrNO', response.UMR_NO);
//   }

//   // Retrieve validation response
//   Future<OTPValidationResponse?> getValidationResponse() async {
//     await _initPrefs();
//     final String? CNT = _prefs?.getString('count');
//     final String? SessionID = _prefs?.getString('sessionID');
//     final String? MOBILENO = _prefs?.getString('MobNO');
//     final String? ADDRESS = _prefs?.getString('address');
//     final String? gender = _prefs?.getString('gender');
//     final String? emailid = _prefs?.getString('emailID');
//     final String? DISPLAYNAme = _prefs?.getString('DisplayNAME');
//     final String? DoB = _prefs?.getString('DOB');
//     final String? UMRnO = _prefs?.getString('UMrNO');

//     if (CNT != null &&
//         SessionID != null &&
//         SessionID != null &&
//         MOBILENO != null &&
//         ADDRESS != null &&
//         gender != null &&
//         emailid != null &&
//         DISPLAYNAme != null &&
//         DoB != null &&
//         UMRnO != null) {
//       return OTPValidationResponse(
//           CNT: CNT,
//           SESSION_ID: SessionID,
//           MOBILE_NO1: MOBILENO,
//           GENDER: gender,
//           ADDRESS1: ADDRESS,
//           EMAIL_ID: emailid,
//           DISPLAY_NAME: DISPLAYNAme,
//           DOB: DoB,
//           UMR_NO: UMRnO);
//     }
//     return null;
//   }