import 'package:http/http.dart' as http;
import 'package:nmmedical/AuthProvider.dart';
import 'dart:convert';

import '../models/OTP_Validation_Module.dart';
import '../models/Test_Enquiry_Model.dart';

class TestEnquiryController {
  static Future<List<TestEnquiry>> fetchTestEnquiry() async {
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    String mobileNumber = "";
    AuthProvider _authProvider = AuthProvider();

    List<OTPValidationResponse> Useroptions =
        await _authProvider.getStoredOTPValidationResponses();

    if (Useroptions.isNotEmpty) {
      mobileNumber = Useroptions.first.MOBILE_NO1;
    }

    Map<String, dynamic> data = {
      "bill_id": mobileNumber.toString() + "_A",
      "connection":
          "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS"
    };

    Uri jobsListAPIUrl = Uri.parse(
        'https://mobileappjw.softmed.in/PatinetMobileApp/BillServices');

    try {
      var response = await http.post(jobsListAPIUrl,
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
          },
          body: data,
          encoding: Encoding.getByName("utf-8"));

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = jsonDecode(response.body);
        List<dynamic> data = responseData["Data"]; // Extract the data list

        List<TestEnquiry> fetchedTestEnqiry = [];

        for (var testEnquiryData in data) {
          fetchedTestEnqiry.add(TestEnquiry.fromJson(testEnquiryData));
        }

        return fetchedTestEnqiry;
      } else {
        throw Exception(
            'API request failed with status ${response.statusCode}');
      }
    } catch (error) {
      print('API request failed with error: $error');
      throw Exception('API request failed with error: $error');
    }
  }
}
