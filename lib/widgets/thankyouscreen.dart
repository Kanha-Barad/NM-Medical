import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/userdrawer.dart';

import 'app_drawer.dart';
import 'basic_appbar.dart';
import 'bottom_navigation.dart';

class ThankYou extends StatefulWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(context),
     drawer: const userDrawer(),
      endDrawer: const AppDrawer(),
      body: SingleChildScrollView(
          child: Column(children: [
        Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 187, 42, 34),
            child: Row(children: const [
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Icon(
                      Icons.thumb_up_outlined,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("THANK YOU",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500)),
              ),
            ])),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 50, 0, 5),
          child: Icon(
            Icons.thumb_up_outlined,
            size: 65,
            color: Color.fromARGB(255, 187, 42, 34),
          ),
        ),
        const Text(
          'Thank You!\nYour Home Visit Slot Has Been Booked.',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 187, 42, 34),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 70, 10, 4),
          child: Row(
            children: const [Text('Order Number'), Spacer(), Text('#55254')],
          ),
        ),
        const Divider(
          thickness: 1.8,
          indent: 10,
          endIndent: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 10, 4),
          child: Row(
            children: const [Text('Home visit date'), Spacer(), Text('18 Jan 2023')],
          ),
        ),
        const Divider(
          thickness: 1.8,
          indent: 10,
          endIndent: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 10, 4),
          child: Row(
            children: const [
              Text('Home Visit Address'),
              Spacer(),
              SizedBox(width:140,child: Text('17, Vadsarvala Nivas Mulund West, Mumbai 400054'))
            ],
          ),
        ),
        const Divider(
          thickness: 1.8,
          indent: 10,
          endIndent: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 10, 4),
          child: Row(
            children: const [Text('Total Amount'), Spacer(), Text('₹5,300')],
          ),
        ),
        const Divider(
          thickness: 1.8,
          indent: 10,
          endIndent: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 10, 10, 4),
          child: Row(
            children: const [
              Text('Payment Method'),
              Spacer(),
              Text('Cash On Delivery')
            ],
          ),
        ),
        const Divider(
          thickness: 1.8,
          indent: 10,
          endIndent: 10,
        ),
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
