import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../auth/login.dart';

class Logout {
  exitDialoge(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              title: const Text('Are you sure you want to quit?'),
              actions: <Widget>[
                TextButton(
                  child: Text('No',
                      style: TextStyle(color: Colors.grey.withOpacity(0.8))),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                TextButton(
                    child: const Text('Yes',
                        style: TextStyle(color: Colors.black)),
                    onPressed: () async {
                      SystemNavigator.pop();
                    })
              ]);
        });
  }

  singOut(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              title: const Text('Are You Want to Logout?')
                  .animate(onPlay: (controller) => controller.repeat())
                  .shimmer(
                    duration: const Duration(seconds: 2),
                    color: Colors.deepOrange.withOpacity(0.9),
                    // colors: const [
                    //   Colors.deepOrange,
                    //   Colors.deepOrangeAccent,
                    //   Colors.grey
                    // ],
                  ),
              actions: <Widget>[
                TextButton(
                    child: Text('No',
                        style: TextStyle(color: Colors.grey.withOpacity(0.8))),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    }),
                TextButton(
                    child: const Text('Logout',
                        style: TextStyle(color: Colors.black)),
                    onPressed: () async {
                      Navigator.pop(context);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    })
              ]);
        });
  }
}