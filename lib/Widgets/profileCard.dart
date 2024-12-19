import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import '../auth/Profile.dart';
import '../constants/colors.dart';
import '../constants/images.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        // decoration: const BoxDecoration(color: AppColors.appBarColor),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfilePage()));
          },
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CircleAvatar(
                          radius: 30,
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
                      .animate(onPlay: (controller) => controller.repeat())
                      .shimmer(
                          duration: const Duration(seconds: 5),
                          color: Colors.deepOrange.withOpacity(0.2)),
                ),
                const SizedBox(width: 20),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("BEN", style: TextStyle(color: Colors.black))
                          .animate(onPlay: (controller) => controller.repeat())
                          .shimmer(
                              duration: const Duration(seconds: 5),
                              color: Colors.deepOrange),
                      const Text("1st Warden Parliment House",
                          style: TextStyle(color: Colors.grey)),
                    ]),
                const Spacer(),
                Text("Warden", style: GoogleFonts.agbalumo())
                    .animate(onPlay: (controller) => controller.repeat())
                    .shimmer(duration: const Duration(seconds: 2)),
              ])),
        ));
  }
}
