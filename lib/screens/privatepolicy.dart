import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'advisory_screen.dart';
import 'main_dashboard_screen.dart';
import 'safety_screen.dart';
import 'setting.dart';

class PrivatePolicyScreen extends StatefulWidget {
  const PrivatePolicyScreen({super.key});

  @override
  State<PrivatePolicyScreen> createState() => _PrivatePolicyScreenState();
}

class _PrivatePolicyScreenState extends State<PrivatePolicyScreen> {
  int _selectedIndex = 3;

  static const _bg = Color(0xFFFFF9F5);
  static const _primary = Color(0xFF1A2342);
  static const _secondary = Color(0xFF757575);
  static const _accent = Color(0xFFFF5F26);

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
                    const Icon(
                      Icons.security,
                      color: _accent,
                      size: 28,
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Privacy Policy',
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

                const SizedBox(height: 16),

                // Intro card
                _PolicyCard(
                  child: Text(
                    "At HeatSense AI, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our application.",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      color: _primary.withValues(alpha: 0.85),
                      height: 1.5,
                    ),
                  ),
                ),

                _SectionCard(
                  title: 'Information We Collect',
                  bullets: const [
                    (
                      label: 'Personal Information:',
                      text:
                          ' Name, email address, phone number, age, gender, city, occupation, and health conditions.',
                    ),
                    (
                      label: 'Location Data:',
                      text:
                          ' GPS coordinates and city information when you enable location access.',
                    ),
                    (
                      label: 'Usage Data:',
                      text:
                          ' How you interact with the app, including features used and settings preferences.',
                    ),
                    (
                      label: 'Device Information:',
                      text:
                          ' Device type, operating system, and browser information for app optimization.',
                    ),
                  ],
                ),

                _SectionCard(
                  title: 'How We Use Your Information',
                  bullets: const [
                    (
                      label: null,
                      text:
                          'To provide personalized heat risk assessments based on your profile and location.',
                    ),
                    (
                      label: null,
                      text:
                          'To send you health advisories and heatwave alerts tailored to your needs.',
                    ),
                    (
                      label: null,
                      text: 'To improve our AI models and prediction accuracy.',
                    ),
                    (
                      label: null,
                      text:
                          'To communicate with you about app updates, important notices, and support requests.',
                    ),
                    (
                      label: null,
                      text: 'To ensure app security and prevent fraud or abuse.',
                    ),
                  ],
                ),

                _SectionCard(
                  title: 'Data Security',
                  bullets: const [
                    (
                      label: null,
                      text:
                          'We use industry-standard encryption to protect your data during transmission and storage.',
                    ),
                    (
                      label: null,
                      text:
                          'Your personal information is stored securely and access is restricted to authorized personnel only.',
                    ),
                    (
                      label: null,
                      text:
                          'We regularly update our security measures to protect against unauthorized access, disclosure, or destruction of data.',
                    ),
                    (
                      label: null,
                      text:
                          'While we strive to protect your data, no method of transmission over the internet is 100% secure.',
                    ),
                  ],
                ),

                _SectionCard(
                  title: 'Data Sharing',
                  bullets: const [
                    (
                      label: null,
                      text:
                          'We do not sell, trade, or rent your personal information to third parties.',
                    ),
                    (
                      label: null,
                      text:
                          'We may share anonymized, aggregated data for research purposes to improve heatwave prediction models.',
                    ),
                    (
                      label: null,
                      text:
                          'We may disclose information if required by law or to protect our rights and the safety of users.',
                    ),
                  ],
                ),

                _SectionCard(
                  title: 'Your Rights',
                  bullets: const [
                    (
                      label: 'Access:',
                      text:
                          ' You can view and update your profile information at any time in Settings.',
                    ),
                    (
                      label: 'Deletion:',
                      text:
                          ' You can delete your account and all associated data through Settings > Account > Delete Account.',
                    ),
                    (
                      label: 'Location:',
                      text:
                          ' You can disable location access or manually select your city at any time.',
                    ),
                    (
                      label: 'Notifications:',
                      text:
                          ' You can customize which notifications you receive in Settings.',
                    ),
                  ],
                ),

                _SectionCard(
                  title: "Children's Privacy",
                  bullets: const [
                    (
                      label: null,
                      text:
                          'HeatSense AI is not intended for children under 13 years of age.',
                    ),
                    (
                      label: null,
                      text:
                          'We do not knowingly collect personal information from children under 13.',
                    ),
                  ],
                ),

                const SizedBox(height: 24),
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
}

class _PolicyCard extends StatelessWidget {
  const _PolicyCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
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
      child: child,
    );
  }
}

typedef _Bullet = ({String? label, String text});

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.bullets,
  });

  final String title;
  final List<_Bullet> bullets;

  static const _primary = Color(0xFF1A2342);
  static const _secondary = Color(0xFF757575);
  static const _accent = Color(0xFFFF5F26);

  @override
  Widget build(BuildContext context) {
    return _PolicyCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: _primary,
            ),
          ),
          const SizedBox(height: 14),
          ...bullets.map(
            (b) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    margin: const EdgeInsets.only(top: 7),
                    decoration: const BoxDecoration(
                      color: _accent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: b.label == null
                        ? Text(
                            b.text,
                            style: GoogleFonts.poppins(
                              fontSize: 12.5,
                              color: _secondary,
                              height: 1.5,
                            ),
                          )
                        : RichText(
                            text: TextSpan(
                              style: GoogleFonts.poppins(
                                fontSize: 12.5,
                                color: _secondary,
                                height: 1.5,
                              ),
                              children: [
                                TextSpan(
                                  text: b.label,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w700,
                                    color: _primary,
                                    height: 1.5,
                                  ),
                                ),
                                TextSpan(text: b.text),
                              ],
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

