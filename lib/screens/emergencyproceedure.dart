import 'package:flutter/material.dart';

class EmergencyProceedurePage extends StatefulWidget {
  const EmergencyProceedurePage({super.key});

  @override
  State<EmergencyProceedurePage> createState() =>
      EmergencyProceedurePageState();
}

class EmergencyProceedurePageState extends State<EmergencyProceedurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emergency Proceedure"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              "assets/logo.png",
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            const Stack(
              children: [
                Text(
                  "DRAFT",
                  style: TextStyle(
                    fontSize: 110,
                    fontWeight: FontWeight.bold,
                    color: Colors.black12,
                  ),
                ),
                Positioned(
                    bottom: 40,
                    child: Text(
                      "FIRE AND EVACUATION PLANE",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    )),
              ],
            ),
            const Divider(
              color: Colors.black12,
              thickness: 10,
              height: 20,
            ),
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
          ],
        ),
      ),
    );
  }
}
