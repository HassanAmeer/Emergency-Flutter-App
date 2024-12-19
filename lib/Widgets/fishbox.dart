import 'package:emergency/screens/Site.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class RightFishBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const RightFishBox({
    super.key,
    this.icon = Icons.emergency,
    this.title = "",
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: 0.0,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.47,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 90,
                    decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(8, 0),
                  child: Container(
                    height: 90,
                    decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ))),
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(""),
                        Text(
                          title,
                          style: GoogleFonts.agbalumo(
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              letterSpacing: 1),
                        )
                            .animate(
                              onPlay: (controller) => controller.repeat(),
                            )
                            .shimmer(
                              duration: const Duration(seconds: 2),
                              color: Colors.grey.withOpacity(0.8),
                            ),
                        Transform.scale(
                          scale: 2,
                          child: Icon(
                            icon,
                            color: Colors.grey.shade300,
                          ),
                        )
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

//////// 2.
class LeftFishBox extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const LeftFishBox({
    super.key,
    this.icon = Icons.emergency,
    this.title = "",
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: -0.0,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.47,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    height: 90,
                    decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(24, 0),
                  child: Container(
                    height: 90,
                    decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ))),
                    width: MediaQuery.of(context).size.width * 0.42,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.scale(
                            scale: 3,
                            child: Icon(
                              icon,
                              color: Colors.grey.shade300,
                              size: 20,
                            )),
                        Text(
                          title,
                          style: GoogleFonts.agbalumo(
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                              letterSpacing: 1),
                        )
                            .animate(
                              onPlay: (controller) => controller.repeat(),
                            )
                            .shimmer(
                              duration: const Duration(seconds: 2),
                              color: Colors.grey.withOpacity(0.8),
                            ),
                        const Text(""),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
