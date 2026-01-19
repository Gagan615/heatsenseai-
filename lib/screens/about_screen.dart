import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'display_screen_1.dart';
import 'login_screen.dart';
import 'contact_screen.dart';
import 'feature.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final padding = screenWidth * 0.05;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5F26),
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
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Log In',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF2C2C2C),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF5F26),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DisplayScreen1(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Hero Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 32),
              child: Column(
                children: [
                  // Icon
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.wb_sunny,
                      color: Color(0xFFFF5F26),
                      size: 60,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Headline
                  Text(
                    'About HeatSense AI',
                    style: GoogleFonts.inter(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2C2C2C),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  // Subtext
                  Text(
                    'Empowering communities with AI-driven heatwave predictions and personalized health advisories.',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: const Color(0xFF2C2C2C),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Mission Card
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 24),
              child: Container(
                padding: const EdgeInsets.all(24),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Mission: Climate Justice for Chennai',
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF2C2C2C),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'HeatSense AI is built for the families living along the Buckingham Canal, Kotturpuram, Triplicane and Saidapet. Our mission is to provide dignity and safety to residents in temporary housing who face the dual crisis of extreme heat and seasonal risks. We aim to protect the most vulnerable — children, the elderly, and pregnant women — from the \'invisible killer\' of heat stress inside metal-sheet homes.',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: const Color(0xFF2C2C2C),
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Key Features Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Key Features',
                    style: GoogleFonts.inter(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2C2C2C),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Feature 1: Housing-Aware Risk Engine
                  _buildFeatureCard(
                    icon: Icons.settings,
                    iconColor: const Color(0xFFE63946),
                    backgroundColor: Colors.pink.shade50,
                    title: 'Housing-Aware Risk Engine',
                    description:
                        'Unlike generic apps, we calculate heat risk based on your specific roof type (Metal Sheets vs. Concrete) to predict indoor temperatures accurately.',
                  ),
                  const SizedBox(height: 16),
                  // Feature 2: Protecting the Vulnerable
                  _buildFeatureCard(
                    icon: Icons.shield,
                    iconColor: const Color(0xFFFF5F26),
                    backgroundColor: Colors.orange.shade50,
                    title: 'Protecting the Vulnerable',
                    description:
                        'Specialized alerts for high-risk groups like pregnant women and seniors, ensuring no one is left behind during peak summer months.',
                  ),
                  const SizedBox(height: 16),
                  // Feature 3: Community-Led Data
                  _buildFeatureCard(
                    icon: Icons.people,
                    iconColor: const Color(0xFFFF5F26),
                    backgroundColor: Colors.orange.shade100,
                    title: 'Community-Led Data',
                    description:
                        'Empowering local leaders in canal settlements with hyperlocal data to coordinate safety during critical heat events.',
                  ),
                  const SizedBox(height: 16),
                  // Feature 4: Hyperlocal Language Support
                  _buildFeatureCard(
                    icon: Icons.translate,
                    iconColor: const Color(0xFFE63946),
                    backgroundColor: Colors.pink.shade50,
                    title: 'Hyperlocal Language Support',
                    description:
                        'Accessible alerts designed for Tamil, Hindi, and Marathi speakers to bridge the digital divide.',
                  ),
                ],
              ),
            ),

            // CTA Button
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 24),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFF5F26), Color(0xFFE63946)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFFF5F26).withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisplayScreen1(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Join the Community Network',
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            // Footer
            Container(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 32),
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    "© 2024 HeatSense AI. Developed for Chennai's climate resilience.",
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Colors.grey[600],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FeatureScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Features',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xFF2C2C2C),
                          ),
                        ),
                      ),
                      Text(
                        '|',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.grey[400],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Already on About page
                        },
                        child: Text(
                          'About',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFFF5F26),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Text(
                        '|',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.grey[400],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ContactScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Contact',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xFF2C2C2C),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required Color iconColor,
    required Color backgroundColor,
    required String title,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF2C2C2C),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.grey[600],
                    height: 1.5,
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
