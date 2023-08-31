import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/Mobile_Login_Module.dart';

class LoginController {

  Future<LoginResponse> fetchLoginMobileNumber(String mobile) async {
    final jobsListAPIUrl =
        Uri.parse('https://mobileappjw.softmed.in/PatinetMobileApp/Login');

    final Map<String, String> data = {
      "mobile": mobile,
      "session_Id": "9999",
      "connection":
          "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS",
    };
    try {
      final response = await http.post(
        jobsListAPIUrl,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: data,
        encoding: Encoding.getByName("utf-8"),
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = jsonDecode(response.body);
        print(responseData);
        if (responseData.containsKey("Data") && responseData["Data"] is List) {
          List<dynamic> data = responseData["Data"];
          if (data.isNotEmpty) {
            Map<String, dynamic> loginRes = data[0];
            return LoginResponse.fromJson(loginRes);
          } else {
            // Handle empty data case
            throw Exception("Empty data in response");
          }
        } else {
          // Handle invalid data format case
          throw Exception("Invalid data format in response");
        }
      } else {
        print("Error: API response status code ${response.statusCode}");
        throw Exception("API response status code ${response.statusCode}");
      }
    } catch (error) {
      print("Error fetching login response: $error");
      throw error;
    }
  }
}
