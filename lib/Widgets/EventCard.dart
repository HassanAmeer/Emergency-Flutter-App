import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  IconData icon = Icons.meeting_room;
  List<Widget> list = [];

  EventCard({required this.list, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: list,
                )),
          ),
          Positioned(
            left: 5,
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              radius: 35,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 25,
                child: Icon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
