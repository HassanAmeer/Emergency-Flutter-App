import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor primary = MaterialColor(
    _greyPrimaryValue,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFEEEEEE),
      300: Color(0xFFE0E0E0),
      350: Color(
          0xFFD6D6D6), // only for raised button while pressed in light theme
      400: Color(0xFFBDBDBD),
      500: Color(_greyPrimaryValue),
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0xFF424242),
      850: Color(0xFF303030), // only for background color in dark theme
      900: Color(0xFF212121),
    },
  );
  static const int _greyPrimaryValue = 0xFF000000;
  static const scaffoldColor =
      Color.fromARGB(255, 237, 237, 237); // Dark background
  static const appBarColor = Colors.black;
  static const appBarIconColor = Color.fromARGB(255, 255, 255, 255);
  static const appBarTitleColor = Color.fromARGB(255, 255, 255, 255);
  static const floatingActionButtonColor = Color.fromARGB(255, 0, 0, 0);
  static const holdBtnColor = Colors.deepOrange;
  static const bgColors = Colors.black;
  // Darker app bar
}















// import 'package:flutter/material.dart';

// class AppColors {
//   static const MaterialColor primary = MaterialColor(
//     _deepOrangePrimaryValue,
//     <int, Color>{
//       50: Color(0xFFFBE9E7),
//       100: Color(0xFFFFCCBC),
//       200: Color(0xFFFFAB91),
//       300: Color(0xFFFF8A65),
//       400: Color(0xFFFF7043),
//       500: Color(_deepOrangePrimaryValue),
//       600: Color(0xFFF4511E),
//       700: Color(0xFFE64A19),
//       800: Color(0xFFD84315),
//       900: Color(0xFFBF360C),
//     },
//   );
//   static const int _deepOrangePrimaryValue = 0xFFFF5722;
//   static const scaffoldColor = Color.fromARGB(255, 241, 241, 241);
//   static const appBarColor = Color.fromARGB(255, 255, 231, 229);
// }
