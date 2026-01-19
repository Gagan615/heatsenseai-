import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_dashboard_screen.dart';
import 'advisory_screen.dart';
import 'safety_screen.dart';
import 'setting.dart';
import 'signup_page.dart';
import '../widgets/common_widgets.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int _selectedIndex = 3;
  bool _pushNotifications = true;
  bool _highRiskAlerts = true;
  bool _dailyForecast = true;
  bool _healthTips = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF9F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // Custom App Bar Row
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
                const SizedBox(height: 30),

                // Header Section
                Text(
                  'Notifications',
                  style: GoogleFonts.poppins(
                    fontSize: 36,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF1A2342),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Personalize your heat safety experience',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xFF757575),
                  ),
                ),
                const SizedBox(height: 32),

                // Notification Options List
                // Card 1: Push Notifications
                _buildNotificationCard(
                  icon: Icons.notifications_active,
                  iconColor: Colors.orange,
                  iconBgColor: const Color(0xFFFFEEDC),
                  title: 'Push Notifications',
                  subtitle: 'Receive important updates',
                  value: _pushNotifications,
                  onChanged: () {
                    setState(() {
                      _pushNotifications = !_pushNotifications;
                    });
                  },
                ),
                const SizedBox(height: 16),

                // Card 2: High Risk Alerts
                _buildNotificationCard(
                  icon: Icons.security,
                  iconColor: Colors.red,
                  iconBgColor: const Color(0xFFFFDEE2),
                  title: 'High Risk Alerts',
                  subtitle: 'Notify when risk is high',
                  value: _highRiskAlerts,
                  onChanged: () {
                    setState(() {
                      _highRiskAlerts = !_highRiskAlerts;
                    });
                  },
                ),
                const SizedBox(height: 16),

                // Card 3: Daily Forecast
                _buildNotificationCard(
                  icon: Icons.calendar_today,
                  iconColor: Colors.blue,
                  iconBgColor: const Color(0xFFDDEEFF),
                  title: 'Daily Forecast',
                  subtitle: 'Morning forecast digest',
                  value: _dailyForecast,
                  onChanged: () {
                    setState(() {
                      _dailyForecast = !_dailyForecast;
                    });
                  },
                ),
                const SizedBox(height: 16),

                // Card 4: Health Tips
                _buildNotificationCard(
                  icon: Icons.favorite,
                  iconColor: Colors.pink,
                  iconBgColor: const Color(0xFFFFE7F0),
                  title: 'Health Tips',
                  subtitle: 'Periodic tips based on your profile',
                  value: _healthTips,
                  onChanged: () {
                    setState(() {
                      _healthTips = !_healthTips;
                    });
                  },
                ),
                const SizedBox(height: 24),

                // Logout Button
                LogoutButton(
                  onTap: () {
                    // Optional: add auth sign-out logic here
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpPage()),
                      (route) => false,
                    );
                  },
                ),

                // Delete Account
                DeleteAccountButton(
                  onTap: () {
                    // Optional: add backend/account deletion logic here
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const SignUpPage()),
                      (route) => false,
                    );
                  },
                ),
                const SizedBox(height: 32),

                // Version Footer
                Center(
                  child: Text(
                    'VERSION 2.4.0 • MADE WITH CARE',
                    style: GoogleFonts.poppins(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF757575),
                      letterSpacing: 1.2,
                    ),
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

  Widget _buildNotificationCard({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String subtitle,
    required bool value,
    required VoidCallback onChanged,
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
      child: Row(
        children: [
          // Leading Icon
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: iconBgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          // Title and Subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1A2342),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xFF757575),
                  ),
                ),
              ],
            ),
          ),
          // Trailing Toggle
          _buildNotificationToggle(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationToggle({
    required bool value,
    required VoidCallback onChanged,
  }) {
    return GestureDetector(
      onTap: onChanged,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: value ? const Color(0xFFFF5F26) : Colors.transparent,
          shape: BoxShape.circle,
          border: value
              ? null
              : Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
        ),
        child: value
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 16,
              )
            : null,
      ),
    );
  }
}
