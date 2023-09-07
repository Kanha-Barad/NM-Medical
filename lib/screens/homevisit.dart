import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/thankyouscreen.dart';

import '../AuthProvider.dart';
import '../controllers/Home_Visit_Controller.dart';
import '../controllers/OTP_Validation_Controller.dart';
import '../models/Home_Visit_Module.dart';
import '../models/OTP_Validation_Module.dart';
import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/customContainer.dart';

class homeVisit extends StatefulWidget {
  const homeVisit({Key? key}) : super(key: key);

  @override
  State<homeVisit> createState() => _homeVisitState();
}

final value = NumberFormat("#,##0", "en_US");

class _homeVisitState extends State<homeVisit> {
  final TestSubmitController TEstsubmitAPIController =
      TestSubmitController(); // Create an instance of the controller

  AuthProvider _authProvider = AuthProvider();
  TextEditingController dateController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController mobnoController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  List<DropdownOption> dropdownOptions = [];
  List<OTPValidationResponse> UserdropdownOptions = [];
  late DropdownOption selectedOption;
  late OTPValidationResponse selectedUserOption;
  bool areOptionsFetched = false; // Flag to track options fetching status
  bool areUserOptionsFetched = false;

  @override
  void initState() {
    super.initState();
    dateController.text = "";
    fetchDropdownOptions();
    fetchUserDropdownOptions();
    selectedOption =
        DropdownOption(value: -1, label: ''); // Default uninitialized value
    // selectedUserOption =
    // OTPValidationResponse(value: -1, label: ''); // Default uninitialized value
  }

  Future<void> fetchDropdownOptions() async {
    List<DropdownOption> options =
        await DropdownController.fetchDropdownOptions();
    setState(() {
      dropdownOptions = options;
      if (options.isNotEmpty) {
        selectedOption = options.first; // Set initial selected option
      }
      areOptionsFetched = true; // Mark options as fetched
    });
  }

  Future<void> fetchUserDropdownOptions() async {
    List<OTPValidationResponse> Useroptions =
        await _authProvider.getStoredOTPValidationResponses();

    setState(() {
      UserdropdownOptions = Useroptions;
      if (Useroptions.isNotEmpty) {
        selectedUserOption = Useroptions.first;
      }
      areUserOptionsFetched = true;
    });
  }

  void handleApiSubmit(Map<String, dynamic> data) async {
    try {
      // Call the controller function and await the response
      TestWiseBillResponse? response =
          await TestSubmitController.submitApiRequest(data);

      if (response != null) {
        // Handle the successful response here
        // Navigate to result pages or update UI accordingly
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) =>
                    ThankYou(response.billNo, response.createDt))));
      } else {
        // Handle error cases here
        // Display an error message or take appropriate action
        print("Test Submit is failed");
      }
    } catch (e) {
      // Handle any exceptions that may occur during the API call
      // Display an error message or take appropriate action
      print("Error during Test Submit: $e");

    }
  }

  bool isUserProfileIconClicked = false;
  bool isMenuClicked = false;

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

  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomContainerBar(
          title: "HOME VISIT",
          svgAssetPath: "assets/home-visit/home-visit-title.svg",
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            'Select Date',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
          child: TextField(
            controller: dateController,
            style: TextStyle(fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10, right: 10, top: 14),
              suffixIcon: Icon(
                Icons.date_range_outlined,
                size: 20,
                color: Color.fromARGB(255, 187, 42, 34),
              ),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(), // get today's date
                firstDate: DateTime.now(), // set the minimum date to today
                lastDate: DateTime(2101),
                builder: (BuildContext context, Widget? child) {
                  return Theme(
                    data: ThemeData.light().copyWith(
                      // Use ThemeData.light() for white background
                      primaryColor:
                          Color.fromARGB(255, 187, 42, 34), // Header color
                      accentColor:
                          Color.fromARGB(255, 187, 42, 34), // Selected color
                      colorScheme: ColorScheme.light().copyWith(
                        // Use ColorScheme.light()
                        primary: Color.fromARGB(
                            255, 187, 42, 34), // Header background
                        onPrimary: Colors
                            .white, // Header text color (changed to white)
                        surface: Colors.white, // Calendar background
                        onSurface: Colors.black, // Calendar text color
                      ),
                    ),
                    child: child!,
                  );
                },
              );

              if (pickedDate != null) {
                print(pickedDate);
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                print(formattedDate);
                setState(() {
                  dateController.text = formattedDate;
                });
              } else {
                DateTime.now();
                print("Date is not selected");
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: Text('Select User',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child:
                  areOptionsFetched // Display dropdown only when options are fetched
                      ? DropdownButton<OTPValidationResponse>(
                          underline: Container(
                            height: 2,
                            color: Colors.grey,
                          ),
                          value:
                              selectedUserOption, // Use the selected option directly
                          isExpanded: true,
                          onChanged: (newValue) {
                            setState(() {
                              selectedUserOption = newValue!;
                              firstnameController.text =
                                  selectedUserOption.DISPLAY_NAME;
                              emailController.text =
                                  selectedUserOption.EMAIL_ID;
                              mobnoController.text =
                                  selectedUserOption.MOBILE_NO1;
                              addressController.text =
                                  selectedUserOption.ADDRESS1;
                            });
                          },
                          items: UserdropdownOptions.map((option) {
                            return DropdownMenuItem<OTPValidationResponse>(
                              value: option,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  option.DISPLAY_NAME,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          }).toList(),
                          // icon: Padding(
                          //   padding: const EdgeInsets.only(left: 260.0),
                          //   child: Icon(Icons.keyboard_arrow_down),
                          // ),
                        )
                      : Container()),
        ),
        TextFormField(
          controller: firstnameController,
          keyboardType: TextInputType.name,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
                RegExp(r'[a-zA-Z\s]+')), // Allow only letters and whitespace.
          ],
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Please enter your first name'),
                ),
              );
              return 'Please enter your first name';
            }
            // You can add more specific validation rules if needed.
            return null; // Return null if the first name is valid.
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.grey,
// hintText: "Rohan",
            floatingLabelBehavior: FloatingLabelBehavior.always,
// hintStyle: TextStyle(
// color: Colors.grey,
// fontSize: 12,
// //fontFamily: "verdana_regular",
// fontWeight: FontWeight.w500,
// ),
            labelText: 'First Name',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.name,
          controller: lastnameController,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
                RegExp(r'[a-zA-Z\s]+')), // Allow only letters and whitespace.
          ],
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Please enter your last name'),
                ),
              );
              return 'Please enter your last name';
            }
            // You can add more specific validation rules if needed.
            return null; // Return null if the last name is valid.
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.grey,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Last Name',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Please enter an email address'),
                ),
              );
              return 'Please enter an email address';
            }
            if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                .hasMatch(value)) {
              return 'Please enter a valid email address';
            }
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.grey,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Email',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextFormField(
          controller: mobnoController,
          keyboardType: TextInputType.phone,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // Allow only digits.
            LengthLimitingTextInputFormatter(
                10), // Limit the length to 10 digits (adjust as needed).
          ],
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Please enter a mobile number'),
                ),
              );
              return 'Please enter a mobile number';
            }
            if (value.length != 10) {
              return 'Mobile number must be 10 digits long';
            }
            // You can add more specific validation if needed.
            return null;
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.grey,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Mobile Number',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        TextFormField(
          minLines: 2,
          maxLines: 5,
          controller: addressController,
          keyboardType: TextInputType.multiline,
          validator: (value) {
            if (value!.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Please enter an address'),
                ),
              );
              return 'Please enter an address';
            }
            return null; // Return null if the address is not empty.
          },
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.grey,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: 'Address',
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: Text('Select Test',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child:
                  areOptionsFetched // Display dropdown only when options are fetched
                      ? DropdownButton<DropdownOption>(
                          underline: Container(
                            height: 2,
                            color: Colors.grey,
                          ),
                          value:
                              selectedOption, // Use the selected option directly
                          isExpanded: true,
                          onChanged: (newValue) {
                            setState(() {
                              selectedOption = newValue!;
                            });
                          },
                          items: dropdownOptions.map((option) {
                            return DropdownMenuItem<DropdownOption>(
                              value: option,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  option.label,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            );
                          }).toList(),
                          // icon: Padding(
                          //   padding: const EdgeInsets.only(left: 260.0),
                          //   child: Icon(Icons.keyboard_arrow_down),
                          // ),
                        )
                      : Container()),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6, top: 2, bottom: 40),
          child: InkWell(
            onTap: () {
              // Prepare your request data here
              Map<String, dynamic> requestData = {
                "PATIENT_ID": "1",
                "UMR_NO": selectedUserOption.UMR_NO,
                "TEST_IDS": selectedOption.value.toString(),
                "TEST_AMOUNTS": "",
                "CONSESSION_AMOUNT": "0",
                "BILL_AMOUNT": "0",
                "DUE_AMOUNT": "0",
                "MOBILE_NO": mobnoController.text,
                "MOBILE_REG_FLAG": "y",
                "SESSION_ID": selectedUserOption.SESSION_ID,
                "PAYMENT_MODE_ID": "1",
                "IP_NET_AMOUNT": "0",
                "IP_TEST_CONCESSION": "0",
                "IP_TEST_NET_AMOUNTS": "0",
                "IP_POLICY_ID": "0",
                "IP_PAID_AMOUNT": "0",
                "IP_OUTSTANDING_DUE": "0",
                "connection":
                    "Server=115.112.188.189,11433;User id=app2;Password=Seven@123;Database=UAT_NM_MEDICAL_LIMS",
                "loc_id": "0",
                "IP_SLOT": "NM",
                "IP_DATE": dateController.text,
                "IP_UPLOAD_IMG": "",
                "IP_PRESCRIPTION": "",
                "IP_REMARKS":
                    "${firstnameController.text}*${lastnameController.text}*${emailController.text}*${mobnoController.text}*${addressController.text}*",
                "Mobile_Device_Id": "",
              };

              // Call the function and pass the requestData
              handleApiSubmit(requestData);
            },
            child: Card(
              color: const Color.fromARGB(255, 237, 28, 36),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ),
            ),
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}


// Map data = {
//         "PATIENT_ID": "1",
//         "UMR_NO": umr_no,
//         "TEST_IDS": testIds,
//         "TEST_AMOUNTS": testAmount,
//         "CONSESSION_AMOUNT": "0",
//         "BILL_AMOUNT": "0",
//         "DUE_AMOUNT": "0",
//         "MOBILE_NO": mobNO,
//         "MOBILE_REG_FLAG": "y",
//         "SESSION_ID": Session_ID,
//         "PAYMENT_MODE_ID": "1",
//         "IP_NET_AMOUNT": "0",
//         "IP_TEST_CONCESSION": "0",
//         "IP_TEST_NET_AMOUNTS": "0",
//         "IP_POLICY_ID": "0",
//         "IP_PAID_AMOUNT": "0",
//         "IP_OUTSTANDING_DUE": "0",
//         "connection": globals.Patient_App_Connection_String,
//         "loc_id": "0",
//         "IP_SLOT": "NM",
//         "IP_DATE": "${selectedDate}",
//         "IP_UPLOAD_IMG": "",
//         "IP_PRESCRIPTION": "",
//         "IP_REMARKS": "",
//         "Mobile_Device_Id": "",
//         //"Server_Flag":""
//       };

//       final jobsListAPIUrl = Uri.parse(
//           globals.Global_Patient_Api_URL + '/PatinetMobileApp/NewRegistration');

//       var response = await http.post(jobsListAPIUrl,
//           headers: {
//             "Accept": "application/json",
//             "Content-Type": "application/x-www-form-urlencoded"
//           },
//           body: data,
//           encoding: Encoding.getByName("utf-8"));

//       if (response.statusCode == 200) {
//         Map<String, dynamic> resposne = jsonDecode(response.body);