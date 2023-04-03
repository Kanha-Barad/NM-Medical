import 'package:flutter/material.dart';
import 'package:nmmedical/widgets/userdrawer/address.dart';
import 'package:nmmedical/widgets/userdrawer/dashboard.dart';
import 'package:nmmedical/widgets/userdrawer/myorder.dart';
import 'package:nmmedical/widgets/userdrawer/profile.dart';

class userDrawer extends StatefulWidget {
  const userDrawer({Key? key}) : super(key: key);

  @override
  State<userDrawer> createState() => _userDrawerState();
}

class _userDrawerState extends State<userDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
              onTap: () {
                Navigator.pop(context, true);
              },
              child: const Icon(Icons.close_rounded,
                  size: 25, color: Color.fromARGB(255, 187, 29, 17))),
        ],
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Dashboard()));
        },
        leading: SizedBox(
          height: 25,
          width: 25,
          child: Icon(
            Icons.dashboard_outlined,
            color: Color.fromARGB(255, 187, 29, 17),
          ),
        ),
        title: const Text("Dashboard"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pRofilE()));
        },
        leading: SizedBox(
          height: 25,
          width: 25,
          child: Icon(
            Icons.person_outline,
            color: Color.fromARGB(255, 187, 29, 17),
          ),
        ),
        title: const Text("Profile"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyOrder()));
        },
        leading: SizedBox(
          height: 25,
          width: 25,
          child: Icon(
            Icons.assignment_outlined,
            color: Color.fromARGB(255, 187, 29, 17),
          ),
        ),
        title: const Text("My Order"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Address()));
        },
        leading: SizedBox(
          height: 25,
          width: 25,
          child: Icon(
            Icons.location_on_outlined,
            color: Color.fromARGB(255, 187, 29, 17),
          ),
        ),
        title: const Text("Address"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
      ListTile(
        onTap: () {},
        leading: SizedBox(
          height: 25,
          width: 25,
          child: Icon(
            Icons.exit_to_app_outlined,
            color: Color.fromARGB(255, 187, 29, 17),
          ),
        ),
        title: const Text("Logout"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
    ]));
  }
}
