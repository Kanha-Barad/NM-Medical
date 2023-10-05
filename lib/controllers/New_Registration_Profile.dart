import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nmmedical/models/New_Registration_Profile_Model.dart';

class RegiSTerController {
  Future<List<RegistrationResponse>> registerPatient(
      String name,
      String genderId,
      String address,
      String mobileNumber,
      String emailId,
      String UmrNO,
      String AGE) async {
    if (genderId == "Male") {
      genderId = "1";
    } else if (genderId == "Female") {
      genderId = "2";
    } else {
      genderId = "3";
    }
    try {
      final Map<String, dynamic> data = {
        "pat_name": name,
        "gender_id": genderId,
        "age": AGE,
        "pincode": "",
        "address": address,
        "Mob_no": mobileNumber,
        "location": UmrNO,
        "email_id": emailId,
        "connection":
            "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS"
      };

      final response = await http.post(
        Uri.parse(
            'https://mobileappjw.softmed.in/PatinetMobileApp/Savepatirntreg'),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        // Parse the response body into a List<dynamic>
        Map<String, dynamic> responseData = jsonDecode(response.body);

        // Check if responseData is not empty
        if (responseData.isNotEmpty) {
          List<dynamic> responseItems = responseData["Data"];
          List<RegistrationResponse> registrationResponse =
              responseItems.map((item) {
            Map<String, dynamic> RegstrationDATA = item as Map<String, dynamic>;
            return RegistrationResponse(
              patientId: RegstrationDATA['PATIENT_ID'].toString(),
              umrNo: RegstrationDATA['UMR_NO'].toString(),
              sessionId: RegstrationDATA['SESSION_ID'].toString(),
            );
          }).toList();

          return registrationResponse; // Return the list of RegistrationResponse objects
        } else {
          // Handle the case where "Data" is empty or not present as expected
          throw Exception(
              'Registration failed. Data field is empty or not present.');
        }
      } else {
        // Handle the case where registration fails (response is not 200).
        // You can throw an exception or return an error message.
        throw Exception(
            'Registration failed. HTTP Status Code: ${response.statusCode}');
      }
    } catch (error) {
      // Handle any exceptions that may occur during the API call
      throw Exception('An error occurred during registration: $error');
    }
  }
}


// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../models/New_Registration_Profile_Model.dart';

// class RegistrationController {
//   RegistrationResponse? registrationResponse;

//   Future<RegistrationResponse?> registerPatient({
//     required String name,
//     required String genderId,
//     // required String age,
//     required String address,
//     required String mobileNumber,
//     required String emailId,
//   }) async {
//     final Map<String, dynamic> data = {
//       "pat_name": name,
//       "gender_id": "0",
//       "age": "",
//       "pincode": "",
//       "address": address,
//       "Mob_no": mobileNumber,
//       "location": "",
//       "email_id": emailId,
//       "connection":
//           "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS"
//     };

//     final response = await http.post(
//       Uri.parse(
//           'https://mobileappjw.softmed.in/PatinetMobileApp/Savepatirntreg'), // Replace with your API URL
//       headers: {
//         "Accept": "application/json",
//         "Content-Type": "application/json",
//       },
//       body: jsonEncode(data),
//     );

//     if (response.statusCode == 200) {
//       Map<String, dynamic> responseData = jsonDecode(response.body);
//       // Create an instance of the response model
//       List<dynamic> registrationDATA = responseData["Data"];
//       final responseModel = registrationDATA.map((REG) {
//         Map<String, dynamic> REGIstraTION = REG as Map<String, dynamic>;
//         return RegistrationResponse(
//           patientId: REGIstraTION['PATIENT_ID'].toString(),
//           umrNo: REGIstraTION['UMR_NO'].toString(),
//           sessionId: REGIstraTION['SESSION_ID'].toString(),
//         );
//       }).toList();
//       // Set the response data in the state
//       //setState(() {
//       registrationResponse = responseModel as RegistrationResponse?;
//       // });
//     } else {
//       return null;
//     }
//     return null;
//   }
// }
