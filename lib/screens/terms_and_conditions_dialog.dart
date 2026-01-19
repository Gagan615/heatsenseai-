import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditionsDialog extends StatelessWidget {
  const TermsAndConditionsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Terms and Conditions',
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2C2C2C),
              ),
            ),
            const SizedBox(height: 24),

            // Bullet Points
            _buildBulletPoint(
              'Data Usage:',
              'Your data (age, gender, health conditions) is used solely to calculate personalized heat risk scores.',
            ),
            const SizedBox(height: 16),
            _buildBulletPoint(
              'Medical Disclaimer:',
              'This application provides informational advice only. It is not a substitute for professional medical diagnosis or treatment.',
            ),
            const SizedBox(height: 16),
            _buildBulletPoint(
              'Emergency Protocol:',
              'In case of severe heat-related symptoms, contact emergency services immediately.',
            ),
            const SizedBox(height: 16),
            _buildBulletPoint(
              'Accuracy:',
              'You confirm that the information provided is accurate to the best of your knowledge.',
            ),
            const SizedBox(height: 16),
            _buildBulletPoint(
              'Privacy:',
              'Your data is encrypted and secure. We do not share your personal information with third parties.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String prefix, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '• ',
          style: GoogleFonts.inter(
            fontSize: 16,
            color: const Color(0xFF2C2C2C),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.grey[700],
                height: 1.5,
              ),
              children: [
                TextSpan(
                  text: prefix,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF2C2C2C),
                  ),
                ),
                TextSpan(text: ' $text'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
