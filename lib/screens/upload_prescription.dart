import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nmmedical/widgets/thankyouscreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../AuthProvider.dart';
import '../controllers/Home_Visit_Controller.dart';
import '../controllers/OTP_Validation_Controller.dart';
import '../controllers/Upload_Prescription_Controller.dart';
import '../models/Home_Visit_Module.dart';
import '../models/OTP_Validation_Module.dart';
import '../models/Upload_Prescription_Model.dart';
import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/customContainer.dart';
import 'package:http/http.dart' as http;

String base64Images = "";

class UploadPrescription extends StatefulWidget {
  @override
  State<UploadPrescription> createState() => _UploadPrescriptionState();
}

class _UploadPrescriptionState extends State<UploadPrescription> {
  bool isUserProfileIconClicked = false;
  bool isMenuClicked = false;
  OTPValidationResponse? otpValidationResponse;

  late bool isLoading = false;
  bool canClick = true;

  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
      isMenuClicked = false; // Reset menu icon click state
    });
  }

  // Function to handle menu icon tap
  void handleMenuIconTap() {
    setState(() {
      isMenuClicked = true;
    });
  }

  List<File> _selectedImages = [];

  Future<void> _pickImage(ImageSource source,
      {double? maxHeight,
      double? maxWidth,
      CameraDevice preferredCameraDevice = CameraDevice.rear}) async {
    final pickedImage = await ImagePicker().pickImage(
      source: source,
      maxHeight: maxHeight,
      maxWidth: maxWidth,
      preferredCameraDevice: preferredCameraDevice,
    );
    if (pickedImage != null) {
      setState(() {
        _selectedImages.clear(); // Clear the list before adding the new image
        _selectedImages.add(File(pickedImage.path));
        final BYTes = File(pickedImage.path).readAsBytesSync();
        base64Images = base64Encode(BYTes);
      });
    }
  }

  void _deleteImage(int index) {
    setState(() {
      _selectedImages.removeAt(index);
    });
  }

  List<String> encodeImagesToBase64(List<File> images) {
    List<String> base64Images = [];
    for (var image in images) {
      List<int> imageBytes = image.readAsBytesSync();
      String base64Image = base64Encode(imageBytes);
      base64Images.add(base64Image);
    }
    return base64Images;
  }

  //  file = File(photo.path);
  //                   files.add(File(photo.path));
  //                   final BYTes = File(photo.path).readAsBytesSync();
  //                   base64Image = base64Encode(BYTes);

  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<AuthProvider>(context, listen: false).loadSavedResponse();
  // }

  @override
  Widget build(BuildContext context) {
    SavingBase64ImageSingleUser(
      String BilLNuMbEr,
      String billDATE,
      String images,
    ) async {
      Map data = {
        "Bill_no": BilLNuMbEr,
        "connection":
            "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS",
        "Base64string": images,
      };
      final jobsListAPIUrl = Uri.parse(
          'https://mobileappjw.softmed.in/PatinetMobileApp//UpdateBytesimage');

      var bodys = json.encode(data);

      var response = await http.post(jobsListAPIUrl,
          headers: {"Content-Type": "application/json"}, body: bodys);
      print("${response.statusCode}");
      print("${response.body}");
      if (response.statusCode == 200) {
        Map<String, dynamic> resposne = jsonDecode(response.body);
        List jsonResponse = resposne["Data"];
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ThankYou(BilLNuMbEr, billDATE)));
      } else {
        throw Exception('Failed to load jobs from API');
      }
    }

    uploadImages(String images, String sessionId, String umrNo,
        String mobileNumber) async {
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
        "IP_UPLOAD_IMG": "",
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
        SavingBase64ImageSingleUser(bill_NUmber, Bill_Date, images);
        //return UploadPrescripTIONResponse.fromJson(responseData);
      } else {
        return null;
      }
    }

    return Scaffold(
      appBar: BasicAppbar(
        "",
        "",
        onUserProfileIconTap: handleUserProfileIconTap,
        onMenuIconTap: handleMenuIconTap,
      ),
      endDrawer: AppDrawer(
        isUserIconClicked: isUserProfileIconClicked,
        isMenuIconClicked: isMenuClicked,
      ),
      body: Stack(children: [
        SingleChildScrollView(
            child: Column(children: [
          CustomContainerBar(
            title: "UPLOAD PRESCRIPTION",
            svgAssetPath: "assets/images/upload-prescription-white.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child:
                SvgPicture.asset("assets/images/upload-prescription-big.svg"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Text("Upload Prescription",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600, height: 1.7)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, bottom: 20),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, height: 1.7)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  width: 170,
                  child: Card(
                    elevation: 0,
                    // elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(
                        color: Color.fromARGB(255, 187, 42, 34),
                        width: 1,
                      ),
                    ),
                    child: TextButton.icon(
                        style: TextButton.styleFrom(elevation: 0),
                        onPressed: () {
                          _pickImage(ImageSource.camera,
                              maxHeight: 1920,
                              maxWidth: 1080,
                              // imageQuality: 100,
                              preferredCameraDevice: CameraDevice.rear);
                        },
                        icon:
                            SvgPicture.asset("assets/images/take-picture.svg"),
                        label: const Text("Take Picture",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 187, 42, 34),
                            ))),
                  ),
                ),
                SizedBox(
                    height: 50,
                    width: 170,
                    child: Card(
                        elevation: 0,
                        //   elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 187, 42, 34),
                            width: 1,
                          ),
                        ),
                        child: TextButton.icon(
                            style: TextButton.styleFrom(elevation: 0),
                            onPressed: () {
                              _pickImage(ImageSource.gallery);
                            },
                            icon: SvgPicture.asset("assets/images/gallery.svg"),
                            label: const Text("Gallery",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 187, 42, 34),
                                )))))
              ],
            ),
          ),
          Column(
            children: List.generate(_selectedImages.length, (index) {
              final selectedImage = _selectedImages[index];
              return Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child:
                          SvgPicture.asset("assets/images/upload-bullet.svg"),
                    ),
                    Expanded(
                      child: Text(
                        selectedImage.path.split('/').last,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => _deleteImage(index),
                      child: SvgPicture.asset("assets/images/delete.svg"),
                    ),
                  ],
                ),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 23),
            child: InkWell(
              onTap: () async {
                // if (otpValidationResponse == null) {
                //   print("otpValidationResponse is null");
                //   return;
                // }
                AuthProvider _authProvider = AuthProvider();

                var Useroptions =
                    await _authProvider.getStoredOTPValidationResponses();

                SharedPreferences prefs = await SharedPreferences.getInstance();
                String sessionId =
                    prefs.getString('SESSIONID') ?? "Not Assigned";
                String umrNo = prefs.getString('UMR_NO') ?? "Not Assigned";
                String mobileNumber =
                    prefs.getString('MOBILENO') ?? "Not Assigned";

                if (_selectedImages.isNotEmpty) {
                  // UploadPrescripTIONResponse? uploadResponse =
                  //     await UploadPrescripTIONController.
                  if (Useroptions.length > 1) {
                    showModalBottomSheet(
                      context: context,
                      isDismissible: false,
                      builder: (BuildContext context) {
                        return Container(
                          height:
                              300, // Set the desired fixed height for the bottom popup
                          child: Scaffold(
                            appBar: AppBar(
                              title: Text('Family Members',
                                  style: TextStyle(color: Colors.white)),
                              backgroundColor: Color.fromARGB(255, 187, 42, 34),
                              leading: IconButton(
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                    color: Colors.white,
                                  )),
                            ),
                            body: SingleChildScrollView(
                              child: Column(
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Display users based on global data here
                                  // Each user should be a ListTile with an onTap callback
                                  for (var userData in Useroptions)
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 4, 8, 2),
                                      child: Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18),
                                            side:
                                                BorderSide(color: Colors.grey)),
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.account_circle_outlined,
                                            size: 32,
                                            color: Color.fromARGB(
                                                255, 187, 42, 34),
                                          ),
                                          title: Text(
                                            userData.DISPLAY_NAME,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          subtitle: Text(
                                            userData.UMR_NO,
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          onTap: () async {
                                            if (!canClick || isLoading) {
                                              return; // Do nothing if a previous operation is still in progress
                                            }

                                            setState(() {
                                              isLoading =
                                                  true; // Show loading indicator
                                              canClick =
                                                  false; // Disable further clicks
                                            });
                                            try {
                                              await uploadImages(
                                                  base64Images,
                                                  userData.SESSION_ID,
                                                  userData.UMR_NO,
                                                  userData.MOBILE_NO1);
                                              // Data is successfully saved, you can update the UI as needed
                                            } catch (error) {
                                              // Handle any errors that occur during the uploadImages function
                                            } finally {
                                              // Close the loading indicator dialog
                                              Navigator.of(context).pop();

                                              setState(() {
                                                isLoading =
                                                    false; // Hide loading indicator
                                                canClick =
                                                    true; // Enable clicks again
                                              });
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    uploadImages(
                        //_selectedImages
                        base64Images,
                        sessionId,
                        umrNo,
                        mobileNumber);
                  }
                  // if (uploadResponse != null) {
                  //   // Handle the API response as needed
                  // } else {
                  //   // Handle API error
                  // }
                } else {
                  print(' no image is selected');
                }
                // authProvider.otpData.SESSION_ID;
                // print(authProvider.otpData.SESSION_ID);
              },
              child: Card(
                  // elevation: 2.0,
                  color: const Color.fromARGB(255, 237, 28, 36),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(50, 13, 50, 13),
                      child: (Text("Upload",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600))))),
            ),
          )
        ])),
        if (isLoading) // Display the loading indicator when isLoading is true
          Center(
            child: CircularProgressIndicator(
              color: Color.fromARGB(255, 237, 28, 36),
            ),
          ),
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}


//   void _onUploadPressed() async {
//   // Validate OTP and get OTPValidationResponse
//   // OTPValidationController otpValidationController = OTPValidationController();
//   // OTPValidationResponse otpValidationResponse =
//   //     await otpValidationController.validateOTP("your_msg_id", "your_otp");

//   // // Now you have the validation response, you can access its properties.
//   // String sessionId = otpValidationResponse.SESSION_ID.toString();
//   // String umrNo = otpValidationResponse.UMR_NO;
//   // String mobileNumber = otpValidationResponse.MOBILE_NO1;

//   // Continue with the rest of the code
//   if (_selectedImages.isNotEmpty) {
//     final uploadResponse = await UploadPrescripTIONController.uploadImages(_selectedImages, sessionId, umrNo, mobileNumber);

//     if (uploadResponse != null) {
//       // Handle successful response
//       print('Uploaded successfully');
//       print('Bill No: ${uploadResponse.billNo}');
//       print('Bill ID: ${uploadResponse.billId}');
//       print('Create DateTime: ${uploadResponse.createDateTime}');
//     } else {
//       // Handle failed response
//       print('Upload failed');
//     }
//   } else {
//     print('No images to upload');
//   }
// }