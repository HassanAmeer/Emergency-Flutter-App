import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            title: Text(
              "Profile",
              style: GoogleFonts.agbalumo(letterSpacing: 2),
            ),
            actions: [
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("assets/logo.png",
                      opacity: const AlwaysStoppedAnimation(0.5)))
            ]),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Stack(children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                              width: double.infinity,
                              height: 150,
                              decoration: ShapeDecoration(
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Colors.white,
                              ),
                              // ignore: prefer_const_constructors
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 30),
                                    Text("Ben",
                                            style: GoogleFonts.laila(
                                              // fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ))
                                        .animate(
                                            onPlay: (controller) =>
                                                controller.repeat())
                                        .shimmer(
                                            color: Colors.grey,
                                            duration:
                                                const Duration(seconds: 1))
                                        .shimmer(
                                            color: Colors.deepOrange,
                                            duration:
                                                const Duration(seconds: 2)),
                                    const Text(
                                      "ben@gmail.com",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    const SizedBox(height: 20)
                                  ]))),
                      Center(
                          child: CircleAvatar(
                              backgroundColor: Colors.grey.shade200,
                              radius: 60,
                              child: Stack(children: [
                                const CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 50,
                                    child: Icon(Icons.person,
                                        size: 40, color: Colors.white)),
                                Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: IconButton.filled(
                                        onPressed: () {},
                                        style: IconButton.styleFrom(
                                            elevation: 20,
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    141, 100, 100, 100)),
                                        icon: const Icon(Icons.edit,
                                            color: Colors.white)))
                              ])))
                    ])),
                const SizedBox(height: 20),
                ListTile(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.white,
                    leading:
                        const Icon(Icons.rule, color: Colors.grey, size: 50),
                    title: const Text("Warden",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    subtitle: const Text("Your Role",
                        style: TextStyle(color: Colors.grey))),
                const SizedBox(height: 15),
                ListTile(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.white,
                    leading:
                        const Icon(Icons.layers, color: Colors.grey, size: 50),
                    title: const Text("1st Floor",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    subtitle: const Text("Your Floor",
                        style: TextStyle(color: Colors.grey))),
                const SizedBox(height: 15),
                ListTile(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.white,
                    leading: const Icon(Icons.location_city,
                        color: Colors.grey, size: 50),
                    title: const Text("WA Parlement House",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    subtitle: const Text("Site Name",
                        style: TextStyle(color: Colors.grey))),
                const SizedBox(height: 15),
                ListTile(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.white,
                    leading: const Icon(Icons.location_city,
                        color: Colors.grey, size: 50),
                    title: const Text("WA Parlement House",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    subtitle: const Text("Site Name",
                        style: TextStyle(color: Colors.grey))),
                const SizedBox(height: 15),
                ListTile(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    tileColor: Colors.white,
                    leading: const Icon(Icons.location_on,
                        color: Colors.grey, size: 50),
                    title: const Text(
                        "4 Hervest Terrace,West Perth WA,Australia",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    subtitle: const Text("Site Address",
                        style: TextStyle(color: Colors.grey)))
              ],
            )));
  }
}
