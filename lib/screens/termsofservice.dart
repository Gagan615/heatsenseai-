import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'advisory_screen.dart';
import 'main_dashboard_screen.dart';
import 'safety_screen.dart';
import 'setting.dart';

class TermsOfServiceScreen extends StatefulWidget {
  const TermsOfServiceScreen({super.key});

  @override
  State<TermsOfServiceScreen> createState() => _TermsOfServiceScreenState();
}

class _TermsOfServiceScreenState extends State<TermsOfServiceScreen> {
  int _selectedIndex = 3;

  static const _bg = Color(0xFFFFF9F5);
  static const _primary = Color(0xFF1A2342);
  static const _secondary = Color(0xFF757575);
  static const _accent = Color(0xFFFF5F26);

  static const _warnBg = Color(0xFFFFFDE7);
  static const _warnBorder = Color(0xFFFFF3E0);
  static const _warnText = Color(0xFFF57C00);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // Header
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.description, color: _accent, size: 32),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Terms of Service',
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: _primary,
                            height: 1.1,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Last updated: January 2024',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: _secondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 14),

                // Important Medical Disclaimer (yellow card)
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: _warnBg,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: _warnBorder, width: 1.5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.warning_amber_rounded,
                            color: _warnText,
                            size: 18,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Important Medical Disclaimer',
                            style: GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: _warnText,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'HeatSense AI provides informational health advisories only and is NOT a substitute for professional medical advice. Always consult healthcare professionals for medical concerns. In emergencies, call 102 or 108 immediately.',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: _warnText,
                          height: 1.45,
                        ),
                      ),
                    ],
                  ),
                ),

                _buildSectionCard(
                  'Acceptance of Terms',
                  const [
                    'By accessing and using HeatSense AI, you accept and agree to be bound by these Terms of Service.',
                    'If you do not agree to these terms, please do not use the application.',
                    'We reserve the right to modify these terms at any time, and your continued use constitutes acceptance of changes.',
                  ],
                ),
                _buildSectionCard(
                  'Description of Service',
                  const [
                    'HeatSense AI provides AI-driven heatwave predictions and personalized health advisory alerts.',
                    'The service is designed to help users make informed decisions about heat-related health risks.',
                    'Our predictions and advisories are based on available data and AI models, but are not guaranteed to be 100% accurate.',
                  ],
                ),
                _buildSectionCard(
                  'User Accounts',
                  const [
                    'You are responsible for maintaining the confidentiality of your account credentials.',
                    'You agree to provide accurate, current, and complete information during registration.',
                    'You are responsible for all activities that occur under your account.',
                    'You must notify us immediately of any unauthorized use of your account.',
                  ],
                ),
                _buildSectionCard(
                  'Medical Disclaimer',
                  const [
                    'HeatSense AI provides health information and risk assessments for informational purposes only.',
                    'The service is NOT a substitute for professional medical advice, diagnosis, or treatment.',
                    'Always seek the advice of qualified health providers with any questions regarding medical conditions.',
                    'In case of medical emergencies, contact emergency services immediately (102 or 108).',
                  ],
                ),
                _buildSectionCard(
                  'User Responsibilities',
                  const [
                    'You agree to use the service only for lawful purposes and in accordance with these Terms.',
                    'You will not attempt to gain unauthorized access to the service or its systems.',
                    'You will not use the service to transmit harmful code, viruses, or malicious software.',
                  ],
                ),
                _buildSectionCard(
                  'Intellectual Property',
                  const [
                    'All content, features, and functionality of HeatSense AI are owned by us and protected by copyright, trademark, and other laws.',
                    'You may not copy, modify, distribute, or create derivative works without our written permission.',
                  ],
                ),
                _buildSectionCard(
                  'Limitation of Liability',
                  const [
                    "HeatSense AI is provided 'as is' without warranties of any kind, express or implied.",
                    'We do not guarantee the accuracy, completeness, or usefulness of any information provided.',
                    'We are not liable for any damages arising from your use or inability to use the service.',
                  ],
                ),
                _buildSectionCard(
                  'Termination',
                  const [
                    'We may terminate or suspend your account at any time for violation of these Terms.',
                    'You may delete your account at any time through Settings > Account > Delete Account.',
                  ],
                ),
                _buildSectionCard(
                  'Contact Information',
                  const [
                    'For questions about these Terms of Service, please contact us:',
                    'Email: legal@heatsense.ai',
                    'Support: support@heatsense.ai',
                  ],
                ),

                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MainDashboardScreen()),
              );
            } else if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AdvisoryScreen()),
              );
            } else if (index == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SafetyScreen()),
              );
            } else if (index == 3) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SettingScreen()),
              );
            }
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: _accent,
          unselectedItemColor: _secondary,
          selectedLabelStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: GoogleFonts.poppins(fontSize: 12),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb_outline),
              label: 'Advisory',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shield_outlined),
              label: 'Safety',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard(String title, List<String> points) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w800,
              color: _primary,
            ),
          ),
          const SizedBox(height: 12),
          ...points.map(
            (p) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 5,
                    height: 5,
                    margin: const EdgeInsets.only(top: 7),
                    decoration: const BoxDecoration(
                      color: _accent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      p,
                      style: GoogleFonts.poppins(
                        fontSize: 12.5,
                        color: _secondary,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

