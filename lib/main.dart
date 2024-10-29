import 'package:flutter/material.dart';
import 'package:minhaj/services/azkar_service.dart';
import 'package:minhaj/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  AzkarService().getAzkarAlsabah();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minhaj',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.amiriTextTheme(),
        primaryColor: const Color(0xff07c7a0),
      ),
      home: const SplashScreen(),
    );
  }
}
