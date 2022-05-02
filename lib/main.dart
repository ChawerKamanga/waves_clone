import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:waves_clone/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String appName = 'Waves';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        appName: appName,
      ),
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          bodyText1: GoogleFonts.openSans(
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          bodyText2: GoogleFonts.openSans(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: Colors.grey[300],
          ),
          headline1: GoogleFonts.openSans(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline2: GoogleFonts.openSans(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          headline3: GoogleFonts.openSans(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          headline4: GoogleFonts.openSans(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          headline6: GoogleFonts.openSans(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
