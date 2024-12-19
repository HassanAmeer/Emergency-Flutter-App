import 'package:emergency/Widgets/logout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../auth/Profile.dart';
import '../constants/colors.dart';

class CustomDarawer extends StatelessWidget {
  const CustomDarawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 90,
      shadowColor: Colors.white,
      backgroundColor: Colors.white,
      // clipBehavior: Clip.antiAlias,
      shape: BeveledRectangleBorder(
          side: BorderSide(
            color: Colors.grey.shade700,
            width: 0.4,
            // style: BorderStyle.values[BorderStyle.solid.index],
            // strokeAlign: 90,
          ),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: ListView(children: [
        Transform.scale(
          scale: 4,
          child: Container(
            height: 20,
            decoration: const BoxDecoration(color: AppColors.appBarColor),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfilePage()));
          },
          child: const UserAccountsDrawerHeader(
            accountName:
                Text("Himanshu", style: TextStyle(color: Colors.white)),
            accountEmail: Text("tj7K1@example.com",
                style: TextStyle(color: Colors.white)),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                )),
            decoration: BoxDecoration(color: AppColors.appBarColor),
          ),
        ),
        CupertinoListTile(
          title: const Text("Flash Light"),
          onTap: () {
            Navigator.pop(context);
          },
          leading: const Icon(Icons.flashlight_off),
        ),
        const Divider(height: 1),
        CupertinoListTile(
          title: const Text("Call Emergency"),
          onTap: () {
            Navigator.pop(context);
          },
          leading: const Icon(Icons.call),
        ),
        const Divider(height: 1),
        CupertinoListTile(
          title: const Text("First Aid"),
          trailing:
              const Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey),
          onTap: () {
            Navigator.pop(context);
          },
          leading: const Icon(Icons.medical_services),
        ),
        const Divider(height: 1),
        CupertinoListTile(
          title: const Text("Help Me"),
          trailing:
              const Icon(Icons.arrow_forward_ios_outlined, color: Colors.grey),
          onTap: () {
            Navigator.pop(context);
          },
          leading: const Icon(Icons.help),
        ),
        const Divider(height: 1),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
        ),
        CupertinoListTile(
            title: const Text(
              "Logout",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,
                color: Colors.grey),
            onTap: () {
              // Navigator.pop(context);
              Logout().singOut(context);
              // Logout().exitDialoge(context);
            },
            leading: const Icon(Icons.exit_to_app, color: Colors.grey))
      ]),
    );
  }
}
