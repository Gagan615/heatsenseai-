import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'advisory_screen.dart';
import 'main_dashboard_screen.dart';
import 'safety_screen.dart';
import 'setting.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  int _selectedIndex = 3;

  static const _bg = Color(0xFFFFF9F5);
  static const _primary = Color(0xFF1A2342);
  static const _secondary = Color(0xFF757575);
  static const _accent = Color(0xFFFF5F26);
  static const _green = Color(0xFF00C853);
  static const _card = Colors.white;

  static const _steps = <({String title, String desc})>[
    (
      title: 'Create Your Account',
      desc:
          'Sign up with your email and phone number. You can also sign in with Google for faster access.',
    ),
    (
      title: 'Complete Your Profile',
      desc:
          'Fill in your age, gender, city, and health conditions to help our AI provide personalized risk assessments.',
    ),
    (
      title: 'Enable Location Access',
      desc:
          'Allow location access for real-time weather updates specific to your area.',
    ),
    (
      title: 'View Your Dashboard',
      desc:
          'Check your personalized heat risk level, current weather, and health advisories.',
    ),
    (
      title: 'Review Advisories',
      desc:
          'Get detailed recommendations on hydration, activity, and warning signs.',
    ),
    (
      title: 'Customize Settings',
      desc:
          'Adjust notification preferences, language, and theme to personalize your experience.',
    ),
  ];

  static const _tips = <String>[
    'Keep your profile information up-to-date for accurate risk assessments',
    'Enable push notifications to receive timely alerts about heat risks',
    'Check the Safety Guide section to learn about heat-related illnesses',
    'Review advisories regularly, especially during peak summer months',
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
                  children: [
                    const Icon(Icons.menu_book, color: _accent, size: 28),
                    const SizedBox(width: 10),
                    Text(
                      'Tutorial',
                      style: GoogleFonts.poppins(
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        color: _primary,
                        height: 1.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  'Learn how to get the most out of HeatSense AI',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: _secondary,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 18),

                // Steps
                ...List.generate(
                  _steps.length,
                  (i) => Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: _TutorialStepCard(
                      number: i + 1,
                      title: _steps[i].title,
                      description: _steps[i].desc,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                // Tips card (white card with green accents)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: _card,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: _green.withValues(alpha: 0.25),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.lightbulb, color: _green, size: 22),
                          const SizedBox(width: 10),
                          Text(
                            'Tips for Best Experience',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: _primary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),
                      ..._tips.map(
                        (tip) => Padding(
                          padding: const EdgeInsets.only(bottom: 14),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: _green,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  tip,
                                  style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: _secondary,
                                    height: 1.4,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 32),
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
                MaterialPageRoute(
                  builder: (context) => const MainDashboardScreen(),
                ),
              );
            } else if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdvisoryScreen(),
                ),
              );
            } else if (index == 2) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SafetyScreen(),
                ),
              );
            } else if (index == 3) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingScreen(),
                ),
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

class _TutorialStepCard extends StatelessWidget {
  const _TutorialStepCard({
    required this.number,
    required this.title,
    required this.description,
  });

  final int number;
  final String title;
  final String description;

  static const _primary = Color(0xFF1A2342);
  static const _secondary = Color(0xFF757575);
  static const _accent = Color(0xFFFF5F26);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: const Color(0xFFFFEBEE),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '$number',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: _accent,
                ),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
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
                const SizedBox(height: 6),
                Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: _secondary,
                    height: 1.35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

