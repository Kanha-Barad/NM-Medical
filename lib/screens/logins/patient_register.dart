import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nmmedical/screens/logins/patient_login.dart';
import 'package:nmmedical/screens/nm_home.dart';

TextEditingController NameController = TextEditingController();
TextEditingController MobNoController = TextEditingController();
TextEditingController AgeController = TextEditingController();
TextEditingController MailIdController = TextEditingController();
TextEditingController AddressController = TextEditingController();
class PatientRegister extends StatefulWidget {
  const PatientRegister({Key? key}) : super(key: key);

  @override
  State<PatientRegister> createState() => _PatientRegisterState();
}

class _PatientRegisterState extends State<PatientRegister> {
  var selectedSalutation;

  @override
  Widget build(BuildContext context) {
    final GenderDropDown = Container(
      height: 50,
      width: 300,
      child: DropdownButtonFormField<String>(
        value: selectedSalutation,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.male),
        ),
        hint: Text(
          'Enter Gender',
        ),
        onChanged: (salutation) =>
            setState(() => selectedSalutation = salutation!),
        validator: (value) => value == null ? 'field required' : null,
        items: ['Male', 'Female'].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Column(children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 3, 0, 3),
            child: SizedBox(
                height: 70.0,
                width: 200.0,
                child: Image(image: AssetImage('assets/images/nm-logo.png'))),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 300,
            //  padding: EdgeInsets.symmetric(vertical: 2),
            child: TextField(
              //   focusNode: myFocusNode,
              keyboardType: TextInputType.name,
              // inputFormatters: <TextInputFormatter>[
              //   FilteringTextInputFormatter.digitsOnly
              // ],
              // obscureText: true,
              controller: NameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_pin_rounded),
                focusColor: Color(0xff123456),
                hintText: 'Enter Your Name',
              ),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            padding: EdgeInsets.symmetric(vertical: 2),
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: MobNoController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone_android),
                focusColor: Color(0xff123456),
                hintText: 'Enter mobile number',
              ),
            ),
          ),
          GenderDropDown,
          Container(
            height: 50,
            width: 300,
            padding: EdgeInsets.symmetric(vertical: 2),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: AgeController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.today),
                hintText: 'Enter Age',
              ),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            padding: EdgeInsets.symmetric(vertical: 2),
            child: TextField(
              keyboardType: TextInputType.emailAddress,

              // obscureText: true,
              controller: MailIdController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail_outline_outlined),
                focusColor: Color(0xff123456),
                hintText: 'Enter Your Mail',
              ),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            padding: EdgeInsets.symmetric(vertical: 2),
            child: TextField(
              keyboardType: TextInputType.streetAddress,

              // obscureText: true,
              controller: AddressController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.add_business_rounded),
                focusColor: Color(0xff123456),
                hintText: 'Enter Your Address',
              ),
            ),
          ),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 110,
                child: Card(
                    color: Color.fromARGB(255, 187, 42, 34),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color.fromARGB(
                            255, 232, 142, 137)),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          if (NameController.text == null ||
                              NameController.text == "") {
                            Fluttertoast.showToast(
                                msg: "Please Enter Name",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor:
                                    Color.fromARGB(232, 243, 49, 24),
                                textColor: Colors.white,
                                fontSize: 16.0);
                          } else if (MobNoController.text == null ||
                              MobNoController.text == "") {
                            Fluttertoast.showToast(
                                msg: "Please Enter Mobile No",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor:
                                    Color.fromARGB(232, 243, 49, 24),
                                textColor: Colors.white,
                                fontSize: 16.0);
                          } else if (selectedSalutation == null ||
                              selectedSalutation == "") {
                            Fluttertoast.showToast(
                                msg: "Please Enter Gender",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor:
                                    Color.fromARGB(232, 243, 49, 24),
                                textColor: Colors.white,
                                fontSize: 16.0);
                          } else if (AgeController.text == null ||
                              AgeController.text == "") {
                            Fluttertoast.showToast(
                                msg: "Please Enter Age",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor:
                                    Color.fromARGB(232, 243, 49, 24),
                                textColor: Colors.white,
                                fontSize: 16.0);
                          } else if (MailIdController.text == null ||
                              MailIdController.text == "") {
                            Fluttertoast.showToast(
                                msg: "Please Enter Mail Id",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor:
                                    Color.fromARGB(232, 243, 49, 24),
                                textColor: Colors.white,
                                fontSize: 16.0);
                          } else if (AddressController.text == null ||
                              AddressController.text == "") {
                            Fluttertoast.showToast(
                                msg: "Please Enter Address",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor:
                                    Color.fromARGB(232, 243, 49, 24),
                                textColor: Colors.white,
                                fontSize: 16.0);
                          } else {
                          //  return RegisterPatient();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        NMHome()));
                          }
                        },
                        child: Text('Register',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)))),
              ),
              SizedBox(
                height: 50,
                width: 110,
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
                                  builder: (context) => login()));
                        },
                        child: Text('Cancel',
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)))),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
