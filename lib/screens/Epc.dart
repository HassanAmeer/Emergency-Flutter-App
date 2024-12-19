import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EPC extends StatefulWidget {
  const EPC({super.key});

  @override
  State<EPC> createState() => _EPCState();
}

class _EPCState extends State<EPC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("EPC contect"),
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
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Container(
                color: Colors.deepOrange.shade100.withOpacity(0.6),
                child: const Center(
                  child: Row(children: [
                    Icon(
                      Icons.location_city,
                      size: 50,
                      color: Colors.deepOrange,
                    ),
                    SizedBox(
                      height: 70,
                      child: Column(
                        children: [
                          Text("WA Parliment House",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                          Text(
                            "4 Harvest Tarrace,west perth Australia",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ]),
                )),
          ),
          Column(
            children: [
              const Text(
                "Roles and Responsibilities",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
              CupertinoListTile(
                leading: Icon(
                  Icons.circle,
                  color: Colors.blueGrey.shade200,
                  size: 10,
                ),
                title: const Text('''Assessing the community's risks.'''),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
