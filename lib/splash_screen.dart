import 'dart:async';
import 'package:flutter/material.dart';
import 'package:minhaj/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff07c7a0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "منهاج",
            style: TextStyle(
              fontSize: 56,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 35),
          const Text(
            "لِكُلٍّ جَعَلْنَا مِنكُمْ شِرْعَةً وَمِنْهَاجًا",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Image.asset("assets/Logo.png"),
          const SizedBox(height: 20),
          const CircularProgressIndicator(color: Colors.white),
        ],
      ),
    );
  }
}
