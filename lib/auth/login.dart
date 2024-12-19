import 'package:emergency/Widgets/fishbox.dart';
import 'package:emergency/Widgets/gbutton.dart';
import 'package:emergency/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/home.dart';
import 'ResetPasswordPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade200,
          elevation: 0),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              controller: ScrollController(),
              child: Column(children: [
                // const SizedBox(height: 50),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Image.asset(AppImages.textlogo)),

                const SizedBox(height: 50),
                ////// textfeild
                TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                        hintText: "Enter Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)))),
                const SizedBox(height: 20),
                TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.password_outlined,
                          color: Colors.black,
                        ),
                        hintText: "Enter Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)))),
                const SizedBox(height: 100),
                // GButton(
                //     child: const Text("Login",
                //         style: TextStyle(color: Colors.white)),
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const HomePage()));
                //     }),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.agbalumo(
                          color: Colors.white, letterSpacing: 2, fontSize: 20),
                    )
                        .animate(onPlay: (controller) => controller.repeat())
                        .shimmer(
                            duration: const Duration(seconds: 2),
                            color: Colors.grey),
                  ),
                ),

                const SizedBox(height: 5),
                Center(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      const Text("Forgot Password ?"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const FogotPasswordPage()),
                            );
                          },
                          child: const Text(
                            "Reset Password",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))
                    ])),
              ]))),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Text(" © 2025 evacovation | Powered by ConnectAuz Pty Ltd. ",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade500))
            .animate(onPlay: (controller) => controller.repeat())
            .shimmer(duration: const Duration(seconds: 2), color: Colors.black),
      ),
    );
  }
}
