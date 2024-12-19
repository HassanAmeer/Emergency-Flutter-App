import 'package:flutter/material.dart';

class Emergency extends StatefulWidget {
  const Emergency({super.key});

  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Emergency Procedure',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset("assets/logo.png"),
          ),
        ],
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: Column(children: [
          const Stack(children: [
            Text(
              "DRAFT",
              style: TextStyle(
                  fontSize: 110,
                  fontWeight: FontWeight.bold,
                  color: Colors.black12),
            ),
            Positioned(
              bottom: 40,
              child: Text(
                "FIRE AND EVACUATION PLAN",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
            )
          ]),
          const Text(
            "Byron Bay Aged Care",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          const Divider(
            height: 20,
            color: Colors.black12,
            thickness: 10,
          ),
          Expanded(
              child: ListView(
            shrinkWrap: true,
            children: const [
              ListTile(
                title: Text(
                  "Title",
                ),
                subtitle: Text(
                    "Lorem ipsum (/ˌlɔː.rəm ˈɪp.səm/ LOR-əm IP-səm) is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not yet have content"),
              ),
              ListTile(
                title: Text(
                  "Title",
                ),
                subtitle: Text(
                    "Lorem ipsum (/ˌlɔː.rəm ˈɪp.səm/ LOR-əm IP-səm) is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not yet have content"),
              ),
              ListTile(
                title: Text(
                  "Title",
                ),
                subtitle: Text(
                    "Lorem ipsum (/ˌlɔː.rəm ˈɪp.səm/ LOR-əm IP-səm) is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not yet have content"),
              ),
              ListTile(
                title: Text(
                  "Title",
                ),
                subtitle: Text(
                    "Lorem ipsum (/ˌlɔː.rəm ˈɪp.səm/ LOR-əm IP-səm) is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that does not yet have content"),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
