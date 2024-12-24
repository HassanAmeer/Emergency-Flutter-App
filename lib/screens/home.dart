import 'dart:async';

import 'package:direct_call_plus/direct_call_plus.dart';
import 'package:emergency/constants/colors.dart';
import 'package:emergency/screens/emergencyproceedure.dart';
import 'package:emergency/screens/evcdiagram.dart';
import 'package:emergency/screens/notify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ripple_wave/ripple_wave.dart';

import '../Widgets/profileCard.dart';
import 'ecl/ECL.dart';
import '../Widgets/drawer.dart';
import '../Widgets/fishbox.dart';
import 'sitedetails/siteDetails.dart';
import 'training.dart';
import 'afterholdbtn/options.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool ishold = false;

  int counting = 0;
  bool isHold = false;
  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      counting++;
      setState(() {});

      if (counting >= 6) {
        _timer?.cancel();
        counting = 0;
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OptionsPage()));
      }
    });
  }

  void resetTimer() {
    _timer?.cancel();
    counting = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.sort));
          }),
          title: const Text("Home"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.flashlight_off,
                    color: Colors.grey, size: 30)),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset("assets/logo.png",
                    opacity: const AlwaysStoppedAnimation(0.5)))
          ]),
      drawer: const CustomDarawer(),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.black,
        child: const Icon(Icons.call, color: Colors.white),
        onPressed: () async {
          await DirectCallPlus.makeCall("123");
        },
      ),
      body: Column(children: [
        const SizedBox(height: 20),
        const ProfileCard(),
        const SizedBox(height: 30),
        Text("Dashboard",
                style: GoogleFonts.robotoSlab(
                    color: Colors.grey.shade400, fontSize: 30))
            .animate(
                // onPlay: (controller) => controller.repeat(),
                )
            .fadeIn()
            .shimmer(
                duration: const Duration(seconds: 3),
                color: Colors.black54,
                delay: const Duration(milliseconds: 1500)),
        ///////////
        const SizedBox(height: 20),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    LeftFishBox(
                            title: "Notifications",
                            icon: Icons.circle_notifications,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NotifyPage()));
                            })
                        .animate()
                        .slideX(duration: const Duration(milliseconds: 300)),
                    const SizedBox(width: 7),
                    RightFishBox(
                            title: "ECL",
                            icon: Icons.line_style,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ECL()));
                            })
                        .animate()
                        .slideX(
                            delay: const Duration(milliseconds: 100),
                            duration: const Duration(milliseconds: 300)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    LeftFishBox(
                      title: "Site Dtails",
                      icon: Icons.info,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SiteDetailsPage()));
                      },
                    ).animate().slideX(
                        delay: const Duration(milliseconds: 250),
                        duration: const Duration(milliseconds: 300)),
                    const SizedBox(width: 7),
                    RightFishBox(
                      title: "Evc Diagram",
                      icon: Icons.draw,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EvcDiagaram()));
                      },
                    ).animate().slideX(
                        delay: const Duration(milliseconds: 450),
                        duration: const Duration(milliseconds: 300)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    LeftFishBox(
                      title: "Training",
                      icon: Icons.model_training,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TrainingPage()));
                      },
                    ).animate().slideX(
                        delay: const Duration(milliseconds: 550),
                        duration: const Duration(milliseconds: 300)),
                    const SizedBox(width: 7),
                    RightFishBox(
                      title: "Emergency\nProceedure",
                      icon: Icons.emergency,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const EmergencyProceedurePage()));
                      },
                    ).animate().slideX(
                        delay: const Duration(milliseconds: 650),
                        duration: const Duration(milliseconds: 300)),
                  ],
                ),
              ],
            )),

        // Transform.translate(
        //     offset: const Offset(4, -17),
        //     child: Card(
        //         color: Colors.white,
        //         shape: BeveledRectangleBorder(
        //             borderRadius: BorderRadius.circular(20)),
        //         surfaceTintColor: Colors.white,
        //         child: Padding(
        //           padding: const EdgeInsets.all(10),
        //           child: Icon(Icons.flashlight_on),
        //         ))),

        // const SizedBox(height: 50),
        counting != 0
            ? Text("$counting",
                    style: GoogleFonts.aboreto(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold))
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(
                    duration: const Duration(seconds: 1),
                    color: Colors.deepOrange)
            : const SizedBox(height: 45),
        Transform.translate(
          offset: const Offset(0, 150),
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: GestureDetector(
                onLongPress: () {
                  isHold = true;
                  startTimer();
                },
                onLongPressEnd: (details) {
                  isHold = false;
                  resetTimer();
                },
                child: isHold == false
                    ? SizedBox(
                        width: double.infinity,
                        child: Transform.translate(
                          offset: const Offset(0, 34),
                          child: Transform.scale(
                            scale: 2.2,
                            child: CircleAvatar(
                              backgroundColor:
                                  Colors.grey.shade300.withOpacity(0.5),
                              radius: 100,
                              child: CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 70,
                                child: CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Colors.black,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Positioned(
                                          top: 25,
                                          child: Transform.scale(
                                            scale: 1.4,
                                            child: Icon(Icons.warning,
                                                size: 30,
                                                color: Colors.deepOrange
                                                    .withOpacity(0.3)),
                                          ),
                                        ),
                                        Center(
                                          child: Column(
                                            // mainAxisAlignment: MainAxisAlignment.center,
                                            // crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              const SizedBox(height: 30),
                                              Text(
                                                "Emergency",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors
                                                        .deepOrange.shade300),
                                              ),
                                              const Text(
                                                "Long Press For 5 Seconds",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 7),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(
                        // height: MediaQuery.of(context).size.height * 0.2,
                        child: Transform.translate(
                          offset: const Offset(0, 40),
                          child: Transform.scale(
                            scale: 1.2,
                            child: RippleWave(
                              waveCount: 8,
                              color: AppColors.holdBtnColor,
                              repeat: true,
                              child: CircleAvatar(
                                backgroundColor: counting < 4
                                    ? Colors.black
                                    : AppColors.holdBtnColor,
                                radius: 135,
                                child: Transform.translate(
                                  offset: const Offset(0, -30),
                                  child: Icon(
                                    Icons.warning,
                                    size: 70,
                                    color: AppColors.primary.shade100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
              ).animate().scale(
                  delay: const Duration(milliseconds: 550),
                  duration: const Duration(milliseconds: 200))),
        )
      ]),
    );
  }
}
