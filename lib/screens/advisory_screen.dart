import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_dashboard_screen.dart';
import 'safety_screen.dart';
import 'setting.dart';

class AdvisoryScreen extends StatefulWidget {
  const AdvisoryScreen({super.key});

  @override
  State<AdvisoryScreen> createState() => _AdvisoryScreenState();
}

class _AdvisoryScreenState extends State<AdvisoryScreen> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),

                // Custom App Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Left: Logo and Title
                    Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFF5F26),
                            borderRadius: BorderRadius.circular(8),
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
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFFFF5F26),
                          ),
                        ),
                      ],
                    ),
                    // Right: Notification Icon (standard)
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2F2F2),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notifications_outlined,
                        color: Color(0xFF757575),
                        size: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Page Title Section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HEALTH GUIDANCE',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFFF5F26),
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'Health Advisories',
                          style: GoogleFonts.poppins(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF1A2342),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFECB3),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            'Risk: MEDIUM',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFFF5F26),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32),

                // Card 1: Hydration
                _buildAdvisoryCard(
                  iconColor: Colors.blue,
                  icon: Icons.water_drop,
                  title: 'Hydration',
                  items: [
                    _buildListItem(
                      icon: Icons.check_circle_outline,
                      iconColor: Colors.green,
                      text: 'Drink water regularly, even if you don\'t feel thirsty.',
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Card 2: Activity Management
                _buildAdvisoryCard(
                  iconColor: Colors.orange,
                  icon: Icons.show_chart,
                  title: 'Activity Management',
                  items: [
                    _buildListItem(
                      icon: Icons.warning_amber_rounded,
                      iconColor: Colors.orange,
                      text: 'Be cautious during outdoor activities',
                    ),
                    _buildListItem(
                      icon: Icons.check_circle_outline,
                      iconColor: Colors.green,
                      text: 'Drink water at regular intervals',
                    ),
                    _buildListItem(
                      icon: Icons.check_circle_outline,
                      iconColor: Colors.green,
                      text: 'Ensure good ventilation and fans',
                    ),
                    _buildListItem(
                      icon: Icons.warning_amber_rounded,
                      iconColor: Colors.orange,
                      text: 'Avoid polluted, hot air; carry inhaler if needed',
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Card 3: Clothing
                _buildAdvisoryCard(
                  iconColor: Colors.green,
                  icon: Icons.checkroom,
                  title: 'Clothing',
                  items: [
                    _buildListItem(
                      icon: Icons.check_circle_outline,
                      iconColor: Colors.green,
                      text: 'Use breathable fabrics (cotton/linen)',
                    ),
                    _buildListItem(
                      icon: Icons.check_circle_outline,
                      iconColor: Colors.green,
                      text: 'Apply sunscreen (SPF 30+)',
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Card 4: Home Cooling
                _buildAdvisoryCard(
                  iconColor: Colors.purple,
                  icon: Icons.home,
                  title: 'Home Cooling',
                  items: [
                    _buildListItem(
                      icon: Icons.check_circle_outline,
                      iconColor: Colors.green,
                      text: 'Keep curtains and windows closed during peak afternoon hours (12 PM - 4 PM) to trap cool air inside.',
                      hasBoldText: true,
                      boldText: '12 PM - 4 PM',
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Card 5: Warning Signs (Special Style)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF0F0),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFFE0E0),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.warning,
                              color: Color(0xFFE63946),
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Warning Signs',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFE63946),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      // List Items with Red X icons
                      _buildWarningListItem('Dizziness'),
                      const SizedBox(height: 12),
                      _buildWarningListItem('Nausea'),
                      const SizedBox(height: 12),
                      _buildWarningListItem('Rapid heartbeat'),
                      const SizedBox(height: 12),
                      _buildWarningListItem('Confusion'),
                      const SizedBox(height: 24),
                      // Bottom Button
                      Center(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: const Color(0xFFE63946),
                              width: 1.5,
                            ),
                          ),
                          child: Text(
                            'Seek medical help immediately',
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFE63946),
                            ),
                            textAlign: TextAlign.center,
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
          selectedItemColor: const Color(0xFFFF5F26),
          unselectedItemColor: const Color(0xFF757575),
          selectedLabelStyle: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: GoogleFonts.poppins(
            fontSize: 12,
          ),
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

  Widget _buildAdvisoryCard({
    required Color iconColor,
    required IconData icon,
    required String title,
    required List<Widget> items,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF1A2342),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // List Items
          ...items,
        ],
      ),
    );
  }

  Widget _buildListItem({
    required IconData icon,
    required Color iconColor,
    required String text,
    bool hasBoldText = false,
    String? boldText,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: hasBoldText && boldText != null
                ? RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF757575),
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: text.replaceAll(boldText, ''),
                        ),
                        TextSpan(
                          text: boldText,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF757575),
                          ),
                        ),
                      ],
                    ),
                  )
                : Text(
                    text,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xFF757575),
                      height: 1.5,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildWarningListItem(String text) {
    return Row(
      children: [
        const Icon(
          Icons.close,
          color: Color(0xFFE63946),
          size: 18,
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: const Color(0xFFE63946),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
