import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../models/Download_Reports_Models.dart';

class ReportController {
  static Future<List<Report>> fetchReports() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String mobileNumber = prefs.getString('MOBILENO') ?? "Not Assigned";
    Map<String, dynamic> data = {
      "bill_id": mobileNumber,
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

        List<Report> fetchedReports = [];

        for (var reportData in data) {
          fetchedReports.add(Report.fromJson(reportData));
        }

        return fetchedReports;
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
