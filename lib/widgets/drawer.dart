// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final imageUrl =
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fcharacters.fandom.com%2Fwiki%2FEren_Yeager&psig=AOvVaw0pVEJsvmnqah8MaiqPZbvR&ust=1637167585983000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOiP7teqnfQCFQAAAAAdAAAAABAD";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // ignore: prefer_const_constructors
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: const Text("Tejas Sonar"),
              accountEmail: const Text("sonartejas00@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            title: Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.black,
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.black,
            ),
            title: Text(
              "Mail",
              textScaleFactor: 1.2,
            ),
          )
        ],
      ),
    );
  }
}
