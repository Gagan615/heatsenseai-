import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final padding = screenWidth * 0.05;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding, vertical: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'HeatSense AI',
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF2C2C2C),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Privacy Policy',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: const Color(0xFF2C2C2C),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                '|',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: const Color(0xFF2C2C2C),
                ),
              ),
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Terms of Service',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: const Color(0xFF2C2C2C),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            '© 2024 HeatSense AI. All rights reserved.',
            style: GoogleFonts.inter(
              fontSize: 12,
              color: const Color(0xFF2C2C2C),
            ),
          ),
        ],
      ),
    );
  }
}
