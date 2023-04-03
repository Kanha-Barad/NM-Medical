import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/userdrawer/editaddress.dart';
import '../bottom_navigation.dart';

import '../app_drawer.dart';
import '../basic_appbar.dart';
import '../userdrawer.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(context),
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
                child: SizedBox(
                    height: 25,
                    width: 25,
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("ADDRESS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500)),
              ),
            ])),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                    color: CupertinoColors.opaqueSeparator, width: 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromARGB(255, 187, 42, 34),
                        size: 20,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 6, 6, 4),
                  child: SizedBox(
                    width: 350,
                    child: Text(
                      "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 8, 0, 8),
                  child: SizedBox(
                    height: 38,
                    width: 150,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditAddress()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Color.fromARGB(255, 227, 21, 31),
                        child: Center(
                          child: Text(
                            'EDIT ADDRESS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                    color: CupertinoColors.opaqueSeparator, width: 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromARGB(255, 187, 42, 34),
                        size: 20,
                      ),
                      Text(
                        'Office',
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 6, 6, 4),
                  child: SizedBox(
                    width: 350,
                    child: Text(
                      "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 8, 0, 8),
                  child: SizedBox(
                    height: 38,
                    width: 150,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditAddress()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Color.fromARGB(255, 227, 21, 31),
                        child: Center(
                          child: Text(
                            'EDIT ADDRESS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                    color: CupertinoColors.opaqueSeparator, width: 1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromARGB(255, 187, 42, 34),
                        size: 20,
                      ),
                      Text(
                        'Bandra',
                        style: TextStyle(
                            color: Color.fromARGB(255, 187, 42, 34),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 6, 6, 4),
                  child: SizedBox(
                    width: 350,
                    child: Text(
                      "Shushrusha Hospital 201, Rd Number 1,Kannamwar Nagar ,Bandra West, Mumbai,Maharashtra 400083",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 8, 0, 8),
                  child: SizedBox(
                    height: 38,
                    width: 150,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditAddress()));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        color: Color.fromARGB(255, 227, 21, 31),
                        child: Center(
                          child: Text(
                            'EDIT ADDRESS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ])),
      bottomNavigationBar: AllBottomNavigationBar(),
    );
  }
}
