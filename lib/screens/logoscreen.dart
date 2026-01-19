import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup_page.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SignUpPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Sun with Thermometer Icon
            SizedBox(
              width: 120,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Radiating rays (8 rays)
                  ...List.generate(8, (index) {
                    final angleRad = (index * 45) * math.pi / 180;
                    final radius = 55.0;
                    final x = radius * math.cos(angleRad);
                    final y = radius * math.sin(angleRad);
                    return Positioned(
                      left: 60 + x - 4,
                      top: 60 + y - 15,
                      child: Transform.rotate(
                        angle: angleRad,
                        child: Container(
                          width: 8,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF5F26),
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    );
                  }),
                  // Central circle with thermometer
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFF5F26),
                    ),
                    child: const Icon(
                      Icons.thermostat,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Title: HeatSense AI
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'HeatSense',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF1A1A1A),
                    ),
                  ),
                  TextSpan(
                    text: ' AI',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFFF5F26),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // Subtitle
            Text(
              'Chennai\'s Shield Against Extreme Heat',
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: const Color(0xFF757575),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            // Loader
            SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Color(0xFFFF5F26),
                ),
                strokeWidth: 3,
              ),
            ),
            const SizedBox(height: 16),
            // Loader Text
            Text(
              'INITIALIZING',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF757575),
                letterSpacing: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
