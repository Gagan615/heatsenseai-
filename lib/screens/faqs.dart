import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'advisory_screen.dart';
import 'main_dashboard_screen.dart';
import 'safety_screen.dart';
import 'setting.dart';

class FAQsScreen extends StatefulWidget {
  const FAQsScreen({super.key});

  @override
  State<FAQsScreen> createState() => _FAQsScreenState();
}

class _FAQsScreenState extends State<FAQsScreen> {
  int _selectedIndex = 3;

  static const _bg = Color(0xFFFFF9F5);
  static const _primary = Color(0xFF1A2342);
  static const _secondary = Color(0xFF757575);
  static const _accent = Color(0xFFFF5F26);

  static const _faqs = <({String q, String a})>[
    (
      q: 'What is HeatSense AI?',
      a:
          'HeatSense AI is an AI-driven system that provides early heatwave predictions and personalized health advisory alerts for at-risk populations in India. It helps individuals and communities stay safe during extreme heat events.',
    ),
    (
      q: 'How does HeatSense AI predict heatwaves?',
      a:
          'HeatSense AI uses advanced machine learning algorithms to analyze real-time meteorological data from multiple trusted sources. The system processes temperature, humidity, wind patterns, and historical data to forecast upcoming heatwave events with high accuracy.',
    ),
    (
      q: 'How do I receive alerts?',
      a:
          'You can enable push notifications in your Settings. The app will send you personalized alerts based on your location, health profile, and the current heat risk level. You can customize which types of alerts you receive in the Notifications settings.',
    ),
    (
      q: 'What information do I need to provide?',
      a:
          'To get personalized risk assessments, you need to provide your age, gender, city, occupation type, and any relevant health conditions. This information helps our AI calculate your specific heat risk level and provide tailored recommendations.',
    ),
    (
      q: 'How accurate are the risk assessments?',
      a:
          'Our risk assessments are based on scientific research and real-time weather data. However, they are advisory in nature and should not replace professional medical advice. Always consult healthcare professionals for serious health concerns.',
    ),
    (
      q: 'Can I use HeatSense AI without location access?',
      a:
          'Yes, you can manually select your city in Settings. However, enabling location access provides more accurate, real-time weather updates and better risk calculations for your exact location.',
    ),
    (
      q: 'Is my data secure?',
      a:
          'Yes, we take data privacy seriously. Your personal information is encrypted and stored securely. We only use your data to provide personalized heat risk assessments and never share it with third parties. See our Privacy Policy for more details.',
    ),
    (
      q: 'How often is the weather data updated?',
      a:
          'Weather data is updated in real-time from trusted meteorological sources. Your dashboard refreshes automatically to show the latest conditions and risk assessments.',
    ),
    (
      q: 'What should I do if I experience heat-related symptoms?',
      a:
          'If you experience symptoms like dizziness, nausea, rapid heartbeat, or confusion, seek medical help immediately. HeatSense AI provides emergency contact numbers in the Advisory section. In case of heatstroke, call emergency services (102 or 108) right away.',
    ),
    (
      q: 'Can I change my profile information later?',
      a:
          'Yes, you can update your profile at any time by going to Settings > Account > Edit Profile. Keeping your information up-to-date ensures you receive the most accurate risk assessments.',
    ),
  ];

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
                      Icons.help_outline,
                      color: _accent,
                      size: 28,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Frequently Asked\nQuestions',
                            style: GoogleFonts.poppins(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              color: _primary,
                              height: 1.05,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Find answers to common questions about\nHeatSense AI',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: _secondary,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // FAQ list
                ..._faqs.map(
                  (item) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: _FaqCard(
                      question: item.q,
                      answer: item.a,
                    ),
                  ),
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
}

class _FaqCard extends StatelessWidget {
  const _FaqCard({
    required this.question,
    required this.answer,
  });

  final String question;
  final String answer;

  static const _primary = Color(0xFF1A2342);
  static const _secondary = Color(0xFF757575);
  static const _accent = Color(0xFFFF5F26);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
          childrenPadding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
          iconColor: _accent,
          collapsedIconColor: _accent,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          collapsedShape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          title: Text(
            question,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: _primary,
            ),
          ),
          children: [
            Text(
              answer,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: _secondary,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

