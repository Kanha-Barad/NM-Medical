import 'package:flutter/material.dart';
import '../../screens/homevisit.dart';
import '../bottom_navigation.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';

class savechangepin extends StatefulWidget {
  const savechangepin({Key? key}) : super(key: key);

  @override
  State<savechangepin> createState() => _savechangepinState();
}

class _savechangepinState extends State<savechangepin> {
  bool isUserProfileIconClicked = false;

  // Function to handle user-profile icon tap
  void handleUserProfileIconTap() {
    setState(() {
      isUserProfileIconClicked = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar("","",onUserProfileIconTap: handleUserProfileIconTap,),
     endDrawer: AppDrawer(isUserIconClicked: isUserProfileIconClicked),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 187, 42, 34),
            child: Row(children: [
              Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Image.asset("assets/images/home-visit-title.png")),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("HOME VISIT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
            ])),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Center(
            child: Icon(
              Icons.location_on_outlined,
              color: Color.fromARGB(255, 187, 42, 34),
              size: 70,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              //alignLabelWithHint: true,
              fillColor: Colors.grey,
              hintText: "ENTER PIN CODE",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontFamily: "verdana",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: SizedBox(
            height: 46,
            width: MediaQuery.of(context).size.width,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => homeVisit()));
              },
              child: Card(
                color: Color.fromARGB(255, 187, 42, 34),
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                child: Center(
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(payMNETNAv: '',),
    );
  }
}
