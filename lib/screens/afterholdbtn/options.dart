import 'package:emergency/constants/colors.dart';
import 'package:emergency/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/checkbox.dart';
import '../../Widgets/profileCard.dart';

class OptionsPage extends StatefulWidget {
  const OptionsPage({super.key});

  @override
  State<OptionsPage> createState() => _OptionsPageState();
}

class _OptionsPageState extends State<OptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Step by Step"),
          actions: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                    opacity: const AlwaysStoppedAnimation(0.5),
                    width: 30,
                    "assets/logo.png"))
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios))),
      body: Column(children: [
        const SizedBox(height: 20),
        const ProfileCard(),
        const Divider(),
        const SizedBox(height: 50),
        const Text("Choose Emergency Option",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25))
            .animate()
            .shimmer(
                duration: const Duration(seconds: 5),
                color: Colors.deepOrange.withOpacity(0.9)),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                  onTap: () {},
                  leading: Image.asset(
                      opacity: const AlwaysStoppedAnimation(0.5),
                      width: 30,
                      AppImages.flame),
                  title: const Text("Fire Emergency"),
                  trailing: CustomCheckBox(onTap: (v) {}, isCheck: true),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  tileColor: Colors.white),
              const SizedBox(height: 5),
              ListTile(
                  leading: Image.asset(
                      opacity: const AlwaysStoppedAnimation(0.5),
                      width: 30,
                      AppImages.enterdoor),
                  title: const Text("Evacuation Emergency"),
                  trailing: CustomCheckBox(onTap: (v) {}, isCheck: true),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  tileColor: Colors.white),
              const SizedBox(height: 5),
              ListTile(
                  leading: Image.asset(
                      opacity: const AlwaysStoppedAnimation(0.5),
                      width: 30,
                      AppImages.exitdoor),
                  title: const Text("External Emergency"),
                  trailing: CustomCheckBox(onTap: (v) {}, isCheck: true),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  tileColor: Colors.white),
              const SizedBox(height: 5),
              ListTile(
                  leading: Image.asset(
                      opacity: const AlwaysStoppedAnimation(0.5),
                      width: 30,
                      AppImages.ambulance),
                  title: const Text("Medical Emergency"),
                  trailing: CustomCheckBox(onTap: (v) {}, isCheck: true),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  tileColor: Colors.white),
              const SizedBox(height: 5),
              ListTile(
                  leading: Image.asset(
                    opacity: const AlwaysStoppedAnimation(0.5),
                    width: 30,
                    AppImages.personalthreat,
                    color: Colors.black,
                  ),
                  title: const Text("Personal Threat"),
                  trailing: CustomCheckBox(onTap: (v) {}, isCheck: true),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  tileColor: Colors.white),
              const SizedBox(height: 5),
              ListTile(
                  leading: Image.asset(
                      opacity: const AlwaysStoppedAnimation(0.5),
                      width: 30,
                      AppImages.bomb),
                  title: const Text("Bomb Threat"),
                  trailing: CustomCheckBox(onTap: (v) {}, isCheck: false),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  tileColor: Colors.white),
            ],
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
                    radius: 55,
                    backgroundColor: AppColors.bgColors,
                    child: Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text(
                        "Next",
                        style: GoogleFonts.afacad(
                            fontSize: 27, color: Colors.white),
                      ),
                    ))
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(
                  duration: const Duration(seconds: 3),
                  color: Colors.deepOrange.withOpacity(0.4),
                ),
          ),
        ),
        const Spacer(),
      ]),
    );
  }
}
