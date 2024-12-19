import 'package:flutter/material.dart';

class GButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  const GButton({super.key, required this.child, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          gradient: LinearGradient(
            colors: [
              Colors.deepOrangeAccent.withOpacity(0.6),
              // Colors.orange.shade900.withOpacity(1),
              Colors.deepOrange.withOpacity(1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: child,
        )),
      ),
    );
  }
}
