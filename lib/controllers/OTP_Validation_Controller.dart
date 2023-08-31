import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../models/OTP_Validation_Module.dart';

class OTPValidationController {
  static Future<void> storeOtpValidationResponse(
      List<OTPValidationResponse> otpValidationResponses) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String otpValidationResponsesJson = jsonEncode(otpValidationResponses);
    await prefs.setString('otpValidationResponses', otpValidationResponsesJson);
  }

  static Future<List<OTPValidationResponse>>
      getStoredOtpValidationResponse() async {
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
        );
      }).toList();
      return otpValidationResponses;
    } else {
      return [];
    }
  }

  static Future<List<OTPValidationResponse>> validateOTP(
      String msgId, String otp) async {
    final data = {
      "msg_id": msgId.split('.')[0],
      "otp": otp,
      "connection":
          "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS",
    };

    try {
      final response = await http.post(
        Uri.parse(
            'https://mobileappjw.softmed.in/PatinetMobileApp/ValidateOtp'),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: data,
        encoding: Encoding.getByName("utf-8"),
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print(responseData);

        if (responseData.containsKey('Data')) {
          List<dynamic> OTPVALIDATEFromAPI = responseData["Data"];
          List<OTPValidationResponse> OtpVAliDATE =
              OTPVALIDATEFromAPI.map((OTP) {
            Map<String, dynamic> OTPMap = OTP as Map<String, dynamic>;
            return OTPValidationResponse(
                CNT: OTPMap["CNT"].toString(),
                SESSION_ID: OTPMap["SESSION_ID"].toString(),
                MOBILE_NO1: OTPMap["MOBILE_NO1"].toString(),
                GENDER: OTPMap["GENDER"].toString(),
                ADDRESS1: OTPMap["ADDRESS1"].toString(),
                EMAIL_ID: OTPMap["EMAIL_ID"].toString(),
                DISPLAY_NAME: OTPMap["DISPLAY_NAME"].toString(),
                DOB: OTPMap["DOB"].toString(),
                UMR_NO: OTPMap["UMR_NO"].toString());
          }).toList();

          // Store the OTP validation responses
          await storeOtpValidationResponse(OtpVAliDATE);

          return OtpVAliDATE;
        } else {
          print("Error: Data key not found in API response");
        }

        // //  if (responseData.containsKey("Data") && responseData["Data"] is List) {
        // //     List<dynamic> data = responseData["Data"];
        // //     if (data.isNotEmpty) {
        // //       Map<String, dynamic> loginRes = data[0];
        // //       return OTPValidationResponse.fromJson(loginRes);
        // //       // SharedPreferences pref = await SharedPreferences.getInstance();
        // //       // pref.setString("loginData", jsonEncode(loginRes));
        // //       // return true;
        // //     } else {
        // //       // Handle empty data case
        // //         throw Exception("Empty data in response");
        // //       //return false;
        // //     }
        // //   }
        //   else {
        //     // Handle invalid data format case
        //   throw Exception("Invalid data format in response");
        //    // return false;
        //   }
      } else {
        print("Error: API response status code ${response.statusCode}");
      }

      return []; // Return an empty list if something went wrong

    } catch (error) {
      print("Error fetching OTP Validation: $error");
      return []; // Return an empty list in case of error
    }
  }
}
