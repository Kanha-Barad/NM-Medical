import 'dart:convert';
import 'dart:io';

import '../models/OTP_Validation_Module.dart';
import '../models/Upload_Prescription_Model.dart';
import 'package:http/http.dart' as http;

import 'OTP_Validation_Controller.dart';

class UploadPrescripTIONController {
  static Future<UploadPrescripTIONResponse?> uploadImages(List<File> images,
      String sessionId, String umrNo, String mobileNumber) async {
    final apiUrl =
        'https://mobileappjw.softmed.in/PatinetMobileApp/NewRegistration';

    Map<String, dynamic> data = {
      "PATIENT_ID": "1",
      "UMR_NO": umrNo,
      "TEST_IDS": "",
      "TEST_AMOUNTS": "0",
      "CONSESSION_AMOUNT": "0",
      "BILL_AMOUNT": "0",
      "DUE_AMOUNT": "0",
      "MOBILE_NO": mobileNumber,
      "MOBILE_REG_FLAG": "y",
      "SESSION_ID": sessionId,
      "PAYMENT_MODE_ID": "1",
      "IP_NET_AMOUNT": "0",
      "IP_TEST_CONCESSION": "0",
      "IP_TEST_NET_AMOUNTS": "0",
      "IP_POLICY_ID": "",
      "IP_PAID_AMOUNT": "0",
      "IP_OUTSTANDING_DUE": "0",
      "connection":
          "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS",
      "loc_id": "0",
      "IP_SLOT": "NM",
      "IP_DATE": "2023-08-17",
      "IP_UPLOAD_IMG": "images",
      //here in the prescription im using for address
      "IP_PRESCRIPTION": "Hyderabad",
      "IP_REMARKS": "",
      "Mobile_Device_Id": ""
    };

    final headers = {
      "Content-Type": "application/json",
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: headers,
      body: json.encode(data),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = jsonDecode(response.body);
      var bill_NUmber = responseData["Data"][0]["BILL_NO"].toString();
        var Bill_Date = responseData["Data"][0]["CREATE_DT"].toString();
     await SavingBase64ImageSingleUser(bill_NUmber,Bill_Date,images);
      return UploadPrescripTIONResponse.fromJson(responseData);
    } else {
      return null;
    }
  }

  static Future<void> SavingBase64ImageSingleUser(String BilLNuMbEr, String billDATE,List<File> images,) async {
      Map data = {
        "Bill_no": BilLNuMbEr,
        "connection": "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS",
        "Base64string": images,
      };
      final jobsListAPIUrl = Uri.parse('https://mobileappjw.softmed.in/PatinetMobileApp//UpdateBytesimage');

      var bodys = json.encode(data);

      var response = await http.post(jobsListAPIUrl,
          headers: {"Content-Type": "application/json"}, body: bodys);
      print("${response.statusCode}");
      print("${response.body}");
      if (response.statusCode == 200) {
        Map<String, dynamic> resposne = jsonDecode(response.body);
        List jsonResponse = resposne["Data"];
        
      } else {
        throw Exception('Failed to load jobs from API');
      }
    }
}

