import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final imageUrl =
      "https://www.google.com/search?q=god+of+war&sxsrf=AOaemvJ-hNqrc8DWZgupWz-ajPY0NqyMWg:1636354796677&source=lnms&tbm=isch&sa=X&ved=2ahUKEwim-YbTmIj0AhXSV30KHbksA9YQ_AUoAnoECAEQBA&biw=1812&bih=872&dpr=1.06#imgrc=se5H6fX_95v1YM";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: const Text("Tejas Sonar"),
              accountEmail: const Text("sonartejas00@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
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
