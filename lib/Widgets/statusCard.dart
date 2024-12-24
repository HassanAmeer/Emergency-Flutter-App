import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusCard extends StatelessWidget {
  final dynamic numbers;
  final String title;
  final Color titleColor;
  const StatusCard(
      {super.key,
      this.numbers = "0",
      this.title = "",
      this.titleColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Card(
        elevation: 0,
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        surfaceTintColor: Colors.white54,
        color: Colors.white54,
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(0),
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              surfaceTintColor: Colors.grey.shade900,
              color: Colors.grey.shade900,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    textAlign: TextAlign.center,
                    "$numbers",
                    style: const TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            const Divider(height: 1),
            Card(
              margin: const EdgeInsets.all(0),
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              surfaceTintColor: Colors.white,
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    title,
                    style: GoogleFonts.lateef(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: titleColor,
                      shadows: const [
                        Shadow(
                          offset: Offset(0.5, 0.5),
                          blurRadius: 0.5,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
