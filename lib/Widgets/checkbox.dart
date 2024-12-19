import 'package:emergency/constants/images.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final bool isCheck;
  final Function(bool value) onTap;
  const CustomCheckBox({super.key, this.isCheck = false, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(!isCheck);
      },
      child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width * 0.13,
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(color: Colors.grey.shade200, width: 10)),
              color: Colors.white),
          child: Center(
              child: isCheck
                  ? Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(AppImages.check, color: Colors.black))
                  : const Text(""))),
    );
  }
}
