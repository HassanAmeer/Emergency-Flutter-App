import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SiteDetails extends StatefulWidget {
  const SiteDetails({super.key});

  @override
  State<SiteDetails> createState() => _SiteDetailsState();
}

class _SiteDetailsState extends State<SiteDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Site name"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset("assets/logo.png"),
          ),
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: const Center(
        child: Text("site name AbC",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
      ).animate(onPlay: (controller) => controller.repeat()).shimmer(
          duration: const Duration(seconds: 2),
          color: Colors.deepOrange.withOpacity(0.9),
          colors: const [
            Colors.deepOrange,
            Colors.deepOrangeAccent,
            Colors.grey
          ]),
    );
  }
}
