import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/Home_Visit_Module.dart';

class DropdownController {
  static Future<List<DropdownOption>> fetchDropdownOptions() async {
    final jobsListAPIUrl = Uri.parse(
        'https://mobileappjw.softmed.in/PatinetMobileApp/PreferedServices');

    final Map<String, String> data = {
      "connection":
          "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS",
      "bill_id": "",
      "IP_LOCATION_ID": "",
      "IP_SESSION_ID": "NM"
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
      final jsonData = json.decode(response.body);

      if (jsonData.containsKey('Data')) {
        List<dynamic> optionsFromAPI = jsonData["Data"];
        List<DropdownOption> dropdownOptions = optionsFromAPI.map((option) {
          Map<String, dynamic> optionMap = option as Map<String, dynamic>;
          return DropdownOption(
            value: optionMap['SERVICE_ID'],
            label: optionMap['SERVICE_NAME'],
          );
        }).toList();

        return dropdownOptions;
      } else {
        print("Error: Data key not found in API response");
      }
    } else {
      print("Error: API response status code ${response.statusCode}");
    }
    
    return []; // Return an empty list if something went wrong

  } catch (error) {
    print("Error fetching dropdown options: $error");
    return []; // Return an empty list in case of error
  }
}}
