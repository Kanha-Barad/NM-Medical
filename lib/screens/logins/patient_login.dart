import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nmmedical/screens/logins/patient_register.dart';
import 'package:nmmedical/screens/logins/validate_OTP.dart';
import 'package:nmmedical/screens/nm_home.dart';
import 'package:http/http.dart' as http;
import 'package:nmmedical/globals.dart' as globals;
import 'package:shared_preferences/shared_preferences.dart';

var isvalidmob = [];
TextEditingController MobileNocontroller = TextEditingController();
var Login_flag = '';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  // var myFocusNode = FocusNode();
  //
  // @override
  // void initState() {
  //   myFocusNode.addListener(() {
  //     print(myFocusNode.hasFocus);
  //   });
  //   super.initState();
  // }
  //
  // EnterMobNo(mobno, RandomOTP) async {
  //   var isLoading = true;
  //   if (mobno.length != 10) {
  //     mobileError();
  //     return false;
  //   }
  //
  //   Map data = {
  //     "mobile": mobno,
  //     "session_Id": RandomOTP.toString(),
  //     "connection": globals.Patient_App_Connection_String
  //     //"Server_Flag":""
  //   };
  //   print(data.toString());
  //
  //   final response = await http.post(
  //       Uri.parse(globals.Global_Patient_Api_URL + '/PatinetMobileApp/Login'),
  //       headers: {
  //         "Accept": "application/json",
  //         "Content-Type": "application/x-www-form-urlencoded"
  //       },
  //       body: data,
  //       encoding: Encoding.getByName("utf-8"));
  //
  //   if (response.statusCode == 200) {
  //     Map<String, dynamic> resposne = jsonDecode(response.body);
  //     Fluttertoast.showToast(
  //         msg: "OTP sent sucessfully",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Color.fromARGB(189, 134, 223, 134),
  //         textColor: Colors.white,
  //         fontSize: 16.0);
  //     globals.mobNO = MobileNocontroller.text.toString();
  //
  //     globals.selectedLogin_Data = jsonDecode(response.body);
  //     globals.umr_no = resposne["Data"][0]['UMR_NO'].toString();
  //     globals.MsgId =
  //         resposne["Data"][0]["MSG_ID"].toString().split('.')[0].toString();
  //     SharedPreferences prefs = await SharedPreferences.getInstance();
  //     prefs.setString("Msg_id", globals.MsgId);
  //     prefs
  //         .setString('Mobileno', MobileNocontroller.text.toString())
  //         .toString();
  //
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => ValidateOTP(
  //                // Login_flag.toString()
  //             )));
  //
  //   } else {}
  // }
  //
  // SendingOTP(mobno, BuildContext context) async {
  //   if (MobileNocontroller.text.length != 10) {
  //     return false;
  //   }
  //   Random random = new Random();
  //   int randomNumber = random.nextInt(9999);
  //   var url = "http://api.pinnacle.in/index.php/sms/send/DRJLAB/" +
  //       mobno +
  //       "/Dear customer, your OTP is " +
  //       randomNumber.toString() +
  //       " to use our new Dr. Jariwala Lab app  ./TXT?apikey=aad947-f9f8e9-af03de-ef2604-9ae037&dltentityid=1501641410000037214&dlttempid=1507165573354184822";
  //   await http.get(Uri.parse(url));
  //
  //   Fluttertoast.showToast(
  //       msg: "OTP sent sucessfully",
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Color.fromARGB(190, 38, 238, 38),
  //       textColor: Colors.white,
  //       fontSize: 16.0);
  //   EnterMobNo(MobileNocontroller.text.toString(), randomNumber.toString());
  // }
  //
  // EnterMobNo1(mobno, RandomOTP) async {
  //   isvalidmob = [];
  //
  //   var isLoading = true;
  //   if (mobno.length != 10) {
  //     mobileError();
  //     return false;
  //   }
  //
  //   Map data = {
  //     "mobile": mobno,
  //     "session_Id": "",
  //     "connection": globals.Patient_App_Connection_String
  //     //"Server_Flag":""
  //   };
  //   print(data.toString());
  //
  //   final response = await http.post(
  //       Uri.parse(globals.Global_Patient_Api_URL + '/PatinetMobileApp/Login'),
  //       headers: {
  //         "Accept": "application/json",
  //         "Content-Type": "application/x-www-form-urlencoded"
  //       },
  //       body: data,
  //       encoding: Encoding.getByName("utf-8"));
  //
  //   if (response.statusCode == 200) {
  //     Map<String, dynamic> resposne = jsonDecode(response.body);
  //     if (resposne["Data"][0]["MOBILE_NO"].toString() == "null") {
  //       //isvalidmob = resposne["Data"][0]["MOBILE_NO"];
  //       Fluttertoast.showToast(
  //         msg: "Please Register Your Mobile Number",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.CENTER,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Color.fromARGB(246, 255, 106, 101),
  //         textColor: Colors.white,
  //         fontSize: 16.0,
  //       );
  //     } else {
  //       SendingOTP(MobileNocontroller.text, context);
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView(
            // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
                child: SizedBox(
                    height: 70,
                    width: 180,
                    child:
                        Image(image: AssetImage('assets/images/nm-logo.png'))),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text(
                    'Please Login to Continue your Profile',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 28),
                child: Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: TextField(
                   // focusNode: myFocusNode,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    // obscureText: true,
                    controller: MobileNocontroller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      prefixIcon: Icon(Icons.phone_iphone),
                      focusColor: Color.fromARGB(255, 187, 42, 34),
                      hintText: 'Enter 10 digit mobile number',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: Card(
                          color: Color.fromARGB(255, 187, 42, 34),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromARGB(255, 232, 159, 155)),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                              onPressed: () {
                                //  EnterMobNo1(MobileNocontroller.text, "");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ValidateOTP()));
                              },
                              child: Text('Send OTP',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)))),
                    ),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: Card(
                          color: Color.fromARGB(255, 243, 196, 192),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NMHome()));
                              },
                              child: Text('Cancel',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 16)))),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a User? ', style: TextStyle(fontSize: 15)),
                    InkWell(
                        child: Text('Register',
                            style: TextStyle(
                                color: Color.fromARGB(255, 187, 42, 34),
                                fontSize: 15,
                                fontWeight: FontWeight.w500)),
                        onTap: () {
                          NameController.text = '';
                          MobNoController.text = '';
                          AgeController.text = '';
                          MailIdController.text = '';
                          AddressController.text = '';
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PatientRegister()));
                        }),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: TextButton(
                  child: Text(
                    'By Clicking above to login, you\'r agreeing to our',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0.0, 50, 0.0),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms & Conditions ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34))),
                      TextSpan(
                          text: '& ', style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: Color.fromARGB(255, 187, 42, 34)))
                    ],
                  ),
                ),
              ),
              // UserProfileverticalLists
            ]),
      ),
    );
  }
}

mobileError() {
  return Fluttertoast.showToast(
      msg: "Enter 10 Digit Mobile Number",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

Validatemobno() {
  return Fluttertoast.showToast(
      msg: "Not registered",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}

OTPError() {
  return Fluttertoast.showToast(
      msg: "please Enter OTP",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Color.fromARGB(255, 206, 19, 12),
      textColor: Colors.white,
      fontSize: 16.0);
}

class PatientDataICon {
  final mob_no;
  final session_ID;
  final display_name;
  final gender;
  final email_id;
  final address;
  final date_of_birth;
  final umr_no;
  PatientDataICon({
    required this.mob_no,
    required this.session_ID,
    required this.display_name,
    required this.gender,
    required this.email_id,
    required this.address,
    required this.date_of_birth,
    required this.umr_no,
  });
  factory PatientDataICon.fromJson(Map<String, dynamic> json) {
    if (json['EMAIL_ID'] == null || json['EMAIL_ID'] == "") {
      json['EMAIL_ID'] = 'Not Specified.';
    }
    if (json['ADDRESS1'] == null || json['EMAIL_ID'] == "") {
      json['ADDRESS1'] = 'Not Specified.';
    }
    return PatientDataICon(
      mob_no: json['MOBILE_NO1'].toString(),
      session_ID: json['SESSION_ID'].toString(),
      display_name: json['DISPLAY_NAME'].toString(),
      gender: json['GENDER'].toString(),
      email_id: json['EMAIL_ID'].toString(),
      address: json['ADDRESS1'].toString(),
      date_of_birth: json['DOB'].toString(),
      umr_no: json['UMR_NO'].toString(),
    );
  }
}

/*-------------------------------------For patient Icon--------------------------------------*/
loginerror() {
  return Fluttertoast.showToast(
      msg: "Failed",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Color.fromARGB(230, 228, 55, 32),
      textColor: Colors.white,
      fontSize: 16.0);
}
