import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Boxewidget extends StatelessWidget {
  String title;
  IconData icon;
  Function() ontap;

  Boxewidget({
    super.key,
    this.title = "please enter title",
    this.icon = Icons.history,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                    onTap: ontap,
                    child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(187, 181, 177, 1),
                                  blurRadius: 12,
                                  offset: Offset(0, 10))
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Center(
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Icon(icon,
                                        color: const Color.fromARGB(
                                            255, 255, 236, 231),
                                        size: 70),
                                    const Spacer(),
                                    const Divider(),
                                    Text(title,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.deepOrange)),
                                  ])
                              // Text("Emergency Procedure",
                              // style: TextStyle(
                              // fontSize: 20,
                              //fontWeight: FontWeight.bold,
                              // color: Colors.white)),
                              ),
                        )))
                .animate(onPlay: (controller) => controller.repeat())
                .shimmer(
                    duration: const Duration(milliseconds: 1000),
                    delay: const Duration(milliseconds: 500),
                    color: Colors.deepOrange.withOpacity(0.1)))
        .animate()
        .slide();
  }
}
