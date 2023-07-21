import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:nmmedical/widgets/thankyouscreen.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/cart_widget.dart';

import '../widgets/app_drawer.dart';
import '../widgets/basic_appbar.dart';
import '../widgets/userdrawer.dart';

class homeVisit extends StatefulWidget {
  const homeVisit({Key? key}) : super(key: key);

  @override
  State<homeVisit> createState() => _homeVisitState();
}

final value = NumberFormat("#,##0", "en_US");

class _homeVisitState extends State<homeVisit> {
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    dateController.text = ""; //set the initial value of text field
    super.initState();
  }

  String dropdownValue = 'Blood Test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(""),
      drawer: userDrawer(),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 187, 42, 34),
            child: Row(children: [
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Image.asset("assets/images/home-visit-title.png")),
              // Padding(
              //   padding: const EdgeInsets.only(left: 15),
              //   child: Container(
              //     height: 30,
              //     width: 30,
              //     decoration: const BoxDecoration(
              //         shape: BoxShape.rectangle,
              //         image: DecorationImage(
              //             image: AssetImage(
              //                 "assets/images/home-visit-title.png"),
              //             fit: BoxFit.fitHeight)),
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("HOME VISIT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
              Spacer(),
              TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                  label: Text("BACK",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)))
            ])),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Text(
            'Select Date',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 2, 15, 4),
          child: TextField(
            controller: dateController,
            style: TextStyle(fontSize: 15),
            decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.date_range_outlined,
                size: 22,
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
                  initialDate: DateTime.now(), //get today's date
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101));
              builder:
              (context) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: ColorScheme.dark(
                      primary: Color.fromARGB(255, 187, 42, 34), // <-- SEE HERE
                      onPrimary:
                          Color.fromARGB(255, 187, 42, 34), // <-- SEE HERE
                      onSurface:
                          Color.fromARGB(255, 187, 42, 34), // <-- SEE HERE
                    ),
                  ),
                  child: Text(""),
                );
              };
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
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        //   child: Text('Home Visit Address',
        //       style: TextStyle(
        //           color: Color.fromARGB(255, 187, 42, 34),
        //           fontSize: 16,
        //           fontWeight: FontWeight.w600)),
        // ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
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
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                //fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
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
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
              //  hintText: "Singh",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                //  fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
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
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
              //  hintText: "abc@gmail.com",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                // fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
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
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
              //  hintText: "12345617890",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                //  fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
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
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: Colors.grey,
              //  hintText: "17, Vadsarbala Nivas Mulund West",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                // fontFamily: "verdana_regular",
                fontWeight: FontWeight.w500,
              ),
              labelText: 'Address',
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Text('Select Test',
              style: TextStyle(
                  color: Color.fromARGB(255, 187, 42, 34),
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: DropdownButtonFormField(
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 237, 239, 239), width: 1.5),
              ),
              filled: true,
              // fillColor: Colors.greenAccent,
            ),
            icon: Icon(
              Icons.arrow_drop_down,
              color: Color.fromARGB(255, 187, 42, 34),
            ),
            dropdownColor: Color.fromARGB(255, 237, 239, 239),
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>[
              'Blood Test',
              'Blood Test 1',
              'Blood Test 2',
              'Blood Test 3',
              'Blood Test 4'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              );
            }).toList(),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
        //   child: Row(
        //     children: [
        //       Text('Apply Coupon Code',
        //           style: TextStyle(
        //               color: Color.fromARGB(255, 187, 42, 34),
        //               fontSize: 16,
        //               fontWeight: FontWeight.w600)),
        //       Spacer(),
        //       Text('Amount',
        //           style: TextStyle(
        //               color: Color.fromARGB(255, 187, 42, 34),
        //               fontSize: 16,
        //               fontWeight: FontWeight.w600)),
        //     ],
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(18, 10, 15, 0),
        //   child: Row(
        //     children: [
        //       SizedBox(
        //           width: 100,
        //           child: TextFormField(
        //             keyboardType: TextInputType.name,
        //             decoration: InputDecoration(
        //               border: UnderlineInputBorder(
        //                 borderRadius: BorderRadius.circular(10.0),
        //               ),
        //               focusedBorder: UnderlineInputBorder(
        //                 borderSide:
        //                     const BorderSide(color: Colors.black, width: 1.5),
        //                 borderRadius: BorderRadius.circular(10.0),
        //               ),
        //               fillColor: Colors.grey,
        //               hintText: "NM200",
        //               hintStyle: TextStyle(
        //                 color: Color.fromARGB(255, 187, 42, 34),
        //                 fontSize: 14,
        //                 fontFamily: "verdana_regular",
        //                 fontWeight: FontWeight.w600,
        //               ),
        //               // labelText: 'First Name',
        //               // labelStyle: TextStyle(
        //               //   color: Colors.black,
        //               //   fontSize: 14,
        //               //   fontWeight: FontWeight.w500,
        //               // ),
        //             ),
        //           )),
        //       Padding(
        //         padding: EdgeInsets.only(top: 11),
        //         child: SizedBox(
        //           height: 38,
        //           width: 90,
        //           child: InkWell(
        //             onTap: () {},
        //             child: Card(
        //               shape: RoundedRectangleBorder(
        //                   borderRadius: BorderRadius.circular(14),
        //                   side: BorderSide(
        //                       color: Color.fromARGB(255, 187, 42, 34))),
        //               child: Center(
        //                 child: Text('APPLY',
        //                     style: TextStyle(
        //                         fontSize: 14,
        //                         color: Color.fromARGB(255, 187, 42, 34),
        //                         fontWeight: FontWeight.w500)),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //       Spacer(),
        //       Padding(
        //         padding: const EdgeInsets.only(top: 10.0),
        //         child: Text(
        //           '\u{20B9} ${value.format(2500)}',
        //           style: TextStyle(
        //               fontSize: 14,
        //               fontWeight: FontWeight.w600,
        //               color: Colors.black),
        //         ),
        //       )
        //     ],
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 16),
          child: SizedBox(
            height: 42,
            width: 120,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ThankYou()));
              },
              child: Card(
                color: const Color.fromARGB(255, 227, 21, 31),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                child: Center(
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
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
