import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class NotifyPage extends StatelessWidget {
  const NotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notify"),
          actions: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.notifications)
                    .animate(
                        delay: const Duration(seconds: 2),
                        onPlay: (controller) => controller.repeat())
                    .shimmer(
                        duration: const Duration(seconds: 2),
                        delay: const Duration(seconds: 2),
                        color: Colors.deepOrange.withOpacity(0.5))
                    .shake(
                      duration: const Duration(seconds: 2),
                    ))
          ],
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          shrinkWrap: true,
          itemCount: 10,
          controller: ScrollController(),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                title: Text(
                  "Title",
                  style: GoogleFonts.aDLaMDisplay(),
                ),
                subtitle:
                    Text("Description", style: GoogleFonts.portLligatSans()),
                trailing: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.deepOrange.withOpacity(0.2),
                  ),
                  onPressed: () {},
                ));
          },
        ));
  }
}
