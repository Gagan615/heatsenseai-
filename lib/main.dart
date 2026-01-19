import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/logoscreen.dart';

void main() {
  runApp(const HeatSenseApp());
}

class HeatSenseApp extends StatelessWidget {
  const HeatSenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HeatSense AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFFFF9F5), // Cream
        cardColor: Colors.white,
        primaryColor: const Color(0xFF1A2342), // Dark Text
        canvasColor: const Color(0xFF757575), // Grey Text
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF5F26)),
        fontFamily: GoogleFonts.inter().fontFamily,
        useMaterial3: true,
      ),
      home: const LogoScreen(),
    );
  }
}
