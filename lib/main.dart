import 'package:caffecino/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

import 'feature/on_boarding/presentaion/view/screen/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   // textTheme: GoogleFonts.poppinsTextTheme(),
      //
      // ),
      home:
      SplashScreen()
    );
  }
}
