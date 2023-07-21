import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nmmedical/widgets/userdrawer/address.dart';
import 'package:nmmedical/widgets/userdrawer/dashboard.dart';
import 'package:nmmedical/widgets/userdrawer/myenquiry.dart';
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
              child: Padding(
                padding: const EdgeInsets.only(right: 12, top: 10),
                child: SvgPicture.asset("assets/images/close-icon.svg"),
              )),
        ],
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Dashboard()));
        },
        leading: SvgPicture.asset("assets/profile-icons/dashboard-icon.svg"),
        title: const Text("Dashboard"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => pRofilE()));
        },
        leading: SvgPicture.asset("assets/profile-icons/profile-icon.svg"),
        title: const Text("Profile"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyOrder()));
        },
        leading: SvgPicture.asset("assets/profile-icons/order-icon.svg"),
        title: const Text("My Enquiry"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
      ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Address()));
        },
        leading: SvgPicture.asset("assets/profile-icons/address-icon.svg"),
        title: const Text("Address"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
      ListTile(
        onTap: () {},
        leading: SvgPicture.asset("assets/profile-icons/logout-icon.svg"),
        title: const Text("Logout"),
        textColor: Color.fromARGB(255, 187, 29, 17),
      ),
    ]));
  }
}
