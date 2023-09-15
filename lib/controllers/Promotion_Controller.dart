import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/Promotion_Model.dart';

class PromotionController {
  static Future<List<Promotion>> fetchPromotions() async {
    Map<String, dynamic> data = {
      "IP_SESSION_ID": "1",
      "IP_USER_ID": "1",
      "connection":
          "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS"
    };

    Uri jobsListAPIUrl = Uri.parse(
        'https://mobileappjw.softmed.in/PatinetMobileApp/APP_PROMOTIONS');

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

        List<Promotion> fetchedPromomtions = [];

        for (var promotionData in data) {
          fetchedPromomtions.add(Promotion.fromJson(promotionData));
        }

        return fetchedPromomtions;
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
