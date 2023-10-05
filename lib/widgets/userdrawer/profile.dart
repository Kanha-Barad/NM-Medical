import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/screens/NM_Login.dart';
import 'package:nmmedical/widgets/bottom_navigation.dart';
import 'package:nmmedical/widgets/userdrawer/profilesavechangepin.dart';
import 'package:provider/provider.dart';

import '../../AuthProvider.dart';
import '../../controllers/New_Registration_Profile.dart';
import '../../models/Mobile_Login_Module.dart';
import '../../models/New_Registration_Profile_Model.dart';
import '../../models/OTP_Validation_Module.dart';
import '../../screens/nm_home.dart';
import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../customContainer.dart';

class pRofilE extends StatefulWidget {
  final loginresponse;
  final EnterEDMOBileNO;
  const pRofilE(
    this.loginresponse,
    this.EnterEDMOBileNO,
  );

  @override
  State<pRofilE> createState() => _pRofilEState();
}

class _pRofilEState extends State<pRofilE> {
  final RegiSTerController _registrationController = RegiSTerController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String selectedGender = 'Male';

  //List<OTPValidationResponse> _validResponseData = [];
  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  void _initializeData() async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    List<OTPValidationResponse> _validResponseData =
        await authProvider.getStoredOTPValidationResponses();
    // Initialize the controllers with existing data
    final loginResponse = authProvider.loginResponse;
    _firstNameController.text = _validResponseData.isNotEmpty
        ? _validResponseData[0].DISPLAY_NAME.split(' ')[0]
        : '';
    _lastNameController.text = _validResponseData.isNotEmpty
        ? _validResponseData[0].DISPLAY_NAME.split(' ')[1]
        : '';
    _emailController.text =
        _validResponseData.isNotEmpty ? _validResponseData[0].EMAIL_ID : '';
    _ageController.text =
        _validResponseData.isNotEmpty ? _validResponseData[0].AGE : '';
    _mobileNumberController.text = _validResponseData.isNotEmpty
        ? _validResponseData[0].MOBILE_NO1
        : loginResponse?.MOBILE_NO ?? '';
    selectedGender = _validResponseData.isNotEmpty
        ? _validResponseData[0].GENDER.split('/')[1]
        : '';
    _addressController.text =
        _validResponseData.isNotEmpty ? _validResponseData[0].ADDRESS1 : '';
  }

  final RegiSTerController _registerController = RegiSTerController();

  void handleRegistration() async {
    final authProvider = Provider.of<AuthProvider>(context, listen: false);
    List<OTPValidationResponse> _validResponseData =
        await authProvider.getStoredOTPValidationResponses();
    final String firstName = _firstNameController.text;
    final String lastName = _lastNameController.text;
    final String genderId = selectedGender;
    final String address = _addressController.text;
    final String mobileNumber = _mobileNumberController.text;
    final String emailId = _emailController.text;
    // _validResponseData[0].UMR_NO;
    final String Age = _ageController.text;

// Check if any of the required fields are empty
    if (firstName.isEmpty ||
        address.isEmpty ||
        mobileNumber.isEmpty ||
        emailId.isEmpty ||
        Age.isEmpty) {
      // Show a Snackbar message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all required fields.'),
        ),
      );
      return; // Exit the function without proceeding further
    }
    // if (_mobileNumberController.text.isNotEmpty) {
    //   _mobileNumberController.text = _validResponseData[0].MOBILE_NO1;
    // }
    try {
      // Proceed with registration
      final List<RegistrationResponse> registrationResponses =
          await _registerController.registerPatient(
              '$firstName $lastName', // Combine first name and last name
              genderId,
              address,
              mobileNumber,
              emailId,
              _validResponseData.length > 0 ? _validResponseData[0].UMR_NO : "",
              Age);

      if (registrationResponses.isNotEmpty) {
        // Handle the case when there is data in the response
        // Navigate to NMHome page or perform further actions here

        // Validate OTP after a successful registration
        try {
          await authProvider.validateOTP(widget.loginresponse.MSG_ID.toString(),
              widget.loginresponse.OTP.toString());
          List<OTPValidationResponse> ValidresponseFORReGisterMOBILEnUMber =
              await authProvider.getStoredOTPValidationResponses();
          // _validResponseData = ValidresponseFORReGisterMOBILEnUMber;
          if (ValidresponseFORReGisterMOBILEnUMber.length > 0) {
            // OTP validation successful
            authProvider.setLoggedIn(true); // Update the login status
            authProvider.saveLoginStatus(
                true); // Save login status to shared preferences
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => NMHome()),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MobileNumberPage()),
            );
          }
        } catch (otpError) {
          // Handle OTP validation error here
          print('Error during OTP validation: $otpError');
          // Show an error message to the user or take appropriate action
        }
      } else {
        // Handle the case when there is no data in the response
        print('No registration data received.');
      }
    } catch (error) {
      // Handle registration error here
      print('Error during registration: $error');

      // Show an error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration failed. Please try again.'),
        ),
      );
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
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomContainerBarDelegate(
            title: "PROFILE",
            svgAssetPath: "assets/profile-icons/user-profile-title.svg",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 12, 0, 10),
                child: TextFormField(
                  controller: _firstNameController,
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    // hintText: "  Rohan",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      // fontFamily: "Verdana",
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextFormField(
                  controller: _lastNameController,
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    // hintText: "  Singh",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      // fontFamily: "Verdana",
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: 'Last Name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    //  hintText: "  rohansingh@gmail.com",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      //  fontFamily: "Verdana",
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Gender',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    DropdownButtonFormField<String>(
                      value: selectedGender.isNotEmpty ? selectedGender : "",
                      onChanged: (newValue) {
                        setState(() {
                          selectedGender = newValue!;
                        });
                      },
                      items: ['Male', 'Female', 'Other']
                          .map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: 'Select gender',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextFormField(
                  controller: _ageController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    // hintText: "  9372694233",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      // fontFamily: "Verdana",
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: 'Age',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextFormField(
                  controller: _mobileNumberController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    fillColor: Colors.grey,
                    // hintText: "  9372694233",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      // fontFamily: "Verdana",
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: 'Mobile Number',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              TextFormField(
                minLines: 2,
                maxLines: 5,
                controller: _addressController,
                keyboardType: TextInputType.streetAddress,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
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
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
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
                padding: const EdgeInsets.only(top: 20, left: 10),
                child: InkWell(
                  onTap: handleRegistration,
                  child: Card(
                    color: Color.fromARGB(255, 237, 28, 36),
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                      child: Text(
                        'SAVE CHANGES',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              )
            ])))
      ]),
      bottomNavigationBar: AllBottomNavigationBar(
        payMNETNAv: '',
      ),
    );
  }
}



  // @override
  // void initState() {
  //   super.initState();
  //   // Call a separate method to handle asynchronous operations
  //   loadUserData();
  // }

  // Future<void> loadUserData() async {
  //   final authProvider = Provider.of<AuthProvider>(context, listen: false);
  //   // Access the login response
  //   final loginResponse = authProvider.loginResponse;
  //   _mobileNumberController.text = loginResponse!.MOBILE_NO;

  //   try {
  //     List<OTPValidationResponse> _validResponseData =
  //         await authProvider.getStoredOTPValidationResponses();
  //     if (_validResponseData.isNotEmpty) {
  //       setState(() {
  //         _firstNameController.text = _validResponseData[0].DISPLAY_NAME;
  //         _mobileNumberController.text = _validResponseData[0].MOBILE_NO1;
  //         _emailController.text = _validResponseData[0].EMAIL_ID;
  //         _addressController.text = _validResponseData[0].ADDRESS1;
  //         _ageController.text = _validResponseData[0].AGE;
  //         selectedGender = _validResponseData[0].GENDER.split('/')[1];
  //       });
  //     }
  //   } catch (error) {
  //     // Handle any errors that may occur during the asynchronous operation
  //     print('Error loading user data: $error');
  //   }
  // }