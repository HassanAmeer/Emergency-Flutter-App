import 'package:cached_network_image/cached_network_image.dart';
import 'package:emergency/Widgets/statusCard.dart';
import 'package:emergency/constants/colors.dart';
import 'package:emergency/screens/Epc.dart';
import 'package:emergency/screens/training.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Widgets/EventCard.dart';
import '../../constants/images.dart';

class ECL extends StatefulWidget {
  const ECL({super.key});

  @override
  State<ECL> createState() => _ECLState();
}

class _ECLState extends State<ECL> {
  PageController pContr = PageController();

  int pageNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Emergency Contact List',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          actions: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/logo.png',
                    opacity: const AlwaysStoppedAnimation(0.5)))
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios))),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.87,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: pContr,
              onPageChanged: (i) {
                pageNo = i;
                setState(() {});
              },
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  physics: const BouncingScrollPhysics(),
                  child: Column(children: [
                    Transform.translate(
                        offset: const Offset(0, -10),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120,
                            color: Colors.grey.shade300,
                            child: const Center(
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(children: [
                                      Icon(Icons.location_city_rounded,
                                          size: 60, color: Colors.black12),
                                      SizedBox(
                                          height: 50,
                                          child: Column(children: [
                                            Text("wA parliment House ",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(
                                                "4 Harvest Terrace,West Perth WA,Australia",
                                                style: TextStyle(fontSize: 15))
                                          ]))
                                    ]))))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.white),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Overall Status",
                                  style: GoogleFonts.agbalumo(
                                      fontSize: 20,
                                      color: Colors.grey,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w100),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    SizedBox(
                                      height: 60,
                                      width: 60,
                                      child: CircularProgressIndicator(
                                        value: 0.57,
                                        backgroundColor:
                                            Colors.black12.withOpacity(0.3),
                                        strokeWidth: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const Text(
                                      "57%",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),
                                    ),
                                  ],
                                )
                              ])),
                    ),
                    const SizedBox(height: 20),
                    const Wrap(spacing: 10, runSpacing: 15, children: [
                      StatusCard(
                        numbers: "3",
                        title: "Totle Employee",
                        titleColor: Colors.deepOrange,
                      ),
                      StatusCard(
                        numbers: "7",
                        title: "Emergency Contact",
                        titleColor: Colors.orange,
                      ),
                      StatusCard(
                        numbers: "000",
                        title: "Emergency Services",
                        titleColor: Colors.green,
                      ),
                      StatusCard(
                        numbers: "131126",
                        title: "Poisons Inf center",
                        titleColor: Colors.red,
                      ),
                    ]),
                    const SizedBox(height: 20),
                    ExpansionTile(
                        backgroundColor: Colors.white,
                        title: Text("Chief ward",
                            style: GoogleFonts.agbalumo(
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w100)),
                        subtitle: const Text(
                          'Ned',
                          style: TextStyle(color: Colors.grey),
                        ),
                        leading: const CircleAvatar(
                            backgroundColor: AppColors.bgColors,
                            child: Icon(Icons.person,
                                color: Colors.white, size: 30)),
                        children: [
                          CupertinoListTile(
                            backgroundColor: Colors.blueGrey.shade50,
                            title: const Text("0301234567",
                                style: TextStyle(fontSize: 15)),
                            trailing:
                                const Icon(Icons.phone, color: Colors.black),
                          ),
                          Divider(height: 1, color: Colors.grey.shade100),
                          CupertinoListTile(
                            backgroundColor: Colors.blueGrey.shade50,
                            title: const Text("ned@evacovation.come",
                                style: TextStyle(fontSize: 15)),
                            trailing:
                                const Icon(Icons.email, color: Colors.black),
                          ),
                        ]),
                    ExpansionTile(
                        backgroundColor: Colors.white,
                        title: Text("Deputy ward",
                            style: GoogleFonts.agbalumo(
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w100)),
                        subtitle: const Text(
                          'Travis',
                          style: TextStyle(color: Colors.grey),
                        ),
                        leading: const CircleAvatar(
                            backgroundColor: AppColors.bgColors,
                            child: Icon(Icons.person,
                                color: Colors.white, size: 30)),
                        children: [
                          CupertinoListTile(
                            backgroundColor: Colors.blueGrey.shade50,
                            title: const Text("0301234567",
                                style: TextStyle(fontSize: 15)),
                            trailing:
                                const Icon(Icons.phone, color: Colors.black),
                          ),
                          Divider(height: 1, color: Colors.grey.shade100),
                          CupertinoListTile(
                            backgroundColor: Colors.blueGrey.shade50,
                            title: const Text("ned@evacovation.come",
                                style: TextStyle(fontSize: 15)),
                            trailing:
                                const Icon(Icons.email, color: Colors.black),
                          ),
                        ]),
                  ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  physics: const BouncingScrollPhysics(),
                  child: Column(children: [
                    Transform.translate(
                        offset: const Offset(0, -10),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120,
                            color: Colors.grey.shade300,
                            child: const Center(
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(children: [
                                      Icon(Icons.location_city_rounded,
                                          size: 60, color: Colors.black12),
                                      SizedBox(
                                          height: 50,
                                          child: Column(children: [
                                            Text("wA parliment House ",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(
                                                "4 Harvest Terrace,West Perth WA,Australia",
                                                style: TextStyle(fontSize: 15))
                                          ]))
                                    ]))))),
                    ///////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("  Wardens",
                                style: GoogleFonts.agbalumo(
                                    fontSize: 20, fontWeight: FontWeight.w100))
                            .animate(
                                onPlay: (controller) => controller.repeat())
                            .shimmer(
                              duration: const Duration(seconds: 4),
                              color: Colors.deepOrange.withOpacity(0.5),
                            ),
                      ],
                    ),

                    Row(
                      children: [
                        Text(
                          "  1 st",
                          style: GoogleFonts.agbalumo(
                              color: Colors.deepOrange.withOpacity(0.7),
                              fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: CupertinoListTile(
                          backgroundColor: Colors.white,
                          title: Text(
                            "Ned",
                            style: GoogleFonts.agbalumo(
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w100),
                          ),
                          subtitle: const Text("Chief Warden"),
                          leading: SizedBox(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CircleAvatar(
                                      radius: 40,
                                      backgroundColor: AppColors.primary.shade400,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            'https://static.vecteezy.com/system/resources/previews/032/176/197/non_2x/business-avatar-profile-black-icon-man-of-user-symbol-in-trendy-flat-style-isolated-on-male-profile-people-diverse-face-for-social-network-or-web-vector.jpg',
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(AppImages.profile),
                                      ))
                                  .animate(
                                      onPlay: (controller) =>
                                          controller.repeat())
                                  .shimmer(
                                      duration: const Duration(seconds: 5),
                                      color:
                                          Colors.deepOrange.withOpacity(0.2)),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: CupertinoListTile(
                          backgroundColor: Colors.white,
                          title: Text(
                            "Tervis",
                            style: GoogleFonts.agbalumo(
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w100),
                          ),
                          subtitle: const Text("Warden"),
                          leading: SizedBox(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CircleAvatar(
                                      radius: 40,
                                      backgroundColor: AppColors.primary.shade400,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            'https://static.vecteezy.com/system/resources/previews/032/176/197/non_2x/business-avatar-profile-black-icon-man-of-user-symbol-in-trendy-flat-style-isolated-on-male-profile-people-diverse-face-for-social-network-or-web-vector.jpg',
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(AppImages.profile),
                                      ))
                                  .animate(
                                      onPlay: (controller) =>
                                          controller.repeat())
                                  .shimmer(
                                      duration: const Duration(seconds: 5),
                                      color:
                                          Colors.deepOrange.withOpacity(0.2)),
                            ),
                          )),
                    ),
                    const SizedBox(height: 5),

                    Row(
                      children: [
                        Text(
                          "  2 Second",
                          style: GoogleFonts.agbalumo(
                              color: Colors.deepOrange.withOpacity(0.7),
                              fontSize: 20),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Empty",
                          style: GoogleFonts.agbalumo(
                              fontSize: 20, color: Colors.grey.shade400)),
                    ),
                    const SizedBox(height: 30),

                    Row(
                      children: [
                        Text(
                          "  3 Third",
                          style: GoogleFonts.agbalumo(
                              color: Colors.deepOrange.withOpacity(0.7),
                              fontSize: 20),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: CupertinoListTile(
                          backgroundColor: Colors.white,
                          title: Text(
                            "Tervis",
                            style: GoogleFonts.agbalumo(
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w100),
                          ),
                          subtitle: const Text("Warden"),
                          leading: SizedBox(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: CircleAvatar(
                                      radius: 40,
                                      backgroundColor: AppColors.primary.shade400,
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            'https://static.vecteezy.com/system/resources/previews/032/176/197/non_2x/business-avatar-profile-black-icon-man-of-user-symbol-in-trendy-flat-style-isolated-on-male-profile-people-diverse-face-for-social-network-or-web-vector.jpg',
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(AppImages.profile),
                                      ))
                                  .animate(
                                      onPlay: (controller) =>
                                          controller.repeat())
                                  .shimmer(
                                      duration: const Duration(seconds: 5),
                                      color:
                                          Colors.deepOrange.withOpacity(0.2)),
                            ),
                          )),
                    ),
                  ]),
                ),
                ///////  third page
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  physics: const BouncingScrollPhysics(),
                  child: Column(children: [
                    Transform.translate(
                        offset: const Offset(0, -10),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120,
                            color: Colors.grey.shade300,
                            child: const Center(
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(children: [
                                      Icon(Icons.location_city_rounded,
                                          size: 60, color: Colors.black12),
                                      SizedBox(
                                          height: 50,
                                          child: Column(children: [
                                            Text("wA parliment House ",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(
                                                "4 Harvest Terrace,West Perth WA,Australia",
                                                style: TextStyle(fontSize: 15))
                                          ]))
                                    ]))))),
                    ///////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.49,
                            decoration:
                                BoxDecoration(color: Colors.grey.shade300),
                            child: Center(
                                child: Text(
                              "Opening Time",
                              style: GoogleFonts.agbalumo(
                                  fontSize: 20,
                                  letterSpacing: 1,
                                  color: Colors.grey),
                            ))),
                        Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.49,
                            decoration:
                                BoxDecoration(color: Colors.grey.shade300),
                            child: Center(
                                child: Text(
                              "08:00 AM - 17:00 PM",
                              style: GoogleFonts.agbalumo(
                                  fontSize: 15,
                                  letterSpacing: 1,
                                  color: Colors.black),
                            )
                                    .animate(
                                        onPlay: (controller) =>
                                            controller.repeat())
                                    .shimmer(
                                      color: Colors.deepOrange.shade300,
                                      duration: const Duration(seconds: 2),
                                    ))),
                      ],
                    ),

                    const SizedBox(height: 20),
                    EventCard(
                      list: const [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Primary Meeting",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        Text(
                            "55 South Bank Boulevard, Southbank Vic Australia Southbank",
                            style: TextStyle(color: Colors.grey)),
                        Text("Secondary Room",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                        Text("Available", style: TextStyle(color: Colors.grey))
                      ],
                      icon: Icons.zoom_out_map,
                    ),

                    EventCard(
                      list: const [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Medical Access",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        Text(
                            " Nearst Hospital\n The Alfarid hospital \n PHONE: 0390762000",
                            style: TextStyle(color: Colors.grey)),
                      ],
                      icon: Icons.medical_information,
                    ),
                    EventCard(
                      list: const [
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "First Aider",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ),
                        Text(" Bruce Beasley Kathy Hospital",
                            style: TextStyle(color: Colors.grey)),
                      ],
                      icon: Icons.health_and_safety_rounded,
                    ),
                  ]),
                ),
                ////////  4th page
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  physics: const BouncingScrollPhysics(),
                  child: Column(children: [
                    Transform.translate(
                        offset: const Offset(0, -10),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 120,
                            color: Colors.grey.shade300,
                            child: const Center(
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(children: [
                                      Icon(Icons.location_city_rounded,
                                          size: 60, color: Colors.black12),
                                      SizedBox(
                                          height: 50,
                                          child: Column(children: [
                                            Text("wA parliment House ",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(
                                                "4 Harvest Terrace,West Perth WA,Australia",
                                                style: TextStyle(fontSize: 15))
                                          ]))
                                    ]))))),
                    ///////

                    Text(
                      "Rules & Particeent",
                      style: GoogleFonts.agbalumo(
                          fontSize: 20, color: Colors.black, letterSpacing: 1),
                    )
                        .animate(
                            // onPlay: (controller) => controller.repeat(),
                            )
                        .shimmer(
                            duration: const Duration(seconds: 5),
                            color: Colors.deepOrange.shade300),

                    ListView.builder(
                      shrinkWrap: true,
                      controller: ScrollController(),
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Colors.grey.shade400, radius: 7),
                          title: const Text(
                              "The Chief warden have full control of your workspace  Building Emergency Control Organizatioin"),
                        );
                      },
                    ),
                  ]),
                ),
                ///////  third page
              ],
            ),
          ),

          //////
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  4,
                  (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: InkWell(
                          onTap: () {
                            pContr.jumpToPage(index);
                            pageNo = index;
                            setState(() {});
                          },
                          child: CircleAvatar(
                              backgroundColor: pageNo == index
                                  ? Colors.black
                                  : AppColors.primary.shade400,
                              radius: 7),
                        ),
                      )).toList()),
        ],
      ),
    );
  }
}
