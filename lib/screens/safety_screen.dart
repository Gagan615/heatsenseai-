import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_dashboard_screen.dart';
import 'advisory_screen.dart';
import 'setting.dart';

class SafetyScreen extends StatefulWidget {
  const SafetyScreen({super.key});

  @override
  State<SafetyScreen> createState() => _SafetyScreenState();
}

class _SafetyScreenState extends State<SafetyScreen> {
  int _selectedIndex = 2;
  bool _heatstrokeExpanded = true;
  bool _heatExhaustionExpanded = false;
  bool _heatCrampsExpanded = false;
  bool _sunburnExpanded = false;

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
                Text(
                  'Safety Guide',
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF1A2342),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Essential tips for extreme heat',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: const Color(0xFF757575),
                  ),
                ),
                const SizedBox(height: 24),

                // Video Hero Card
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.grey[300],
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      // Background Image Placeholder
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.grey[300],
                        child: const Icon(
                          Icons.person,
                          size: 80,
                          color: Colors.grey,
                        ),
                      ),
                      // Bottom Gradient Overlay
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black.withValues(alpha: 0.7),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Center Play Button
                      Center(
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.play_arrow_rounded,
                            color: Color(0xFFFF5F26),
                            size: 40,
                          ),
                        ),
                      ),
                      // Bottom Text Overlay
                      Positioned(
                        bottom: 20,
                        left: 16,
                        right: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Heatstroke: A Medical Emergency',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Quick Response Guide • 2:45 min',
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.white.withValues(alpha: 0.9),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),

                // Common Heat Illnesses Section
                Text(
                  'Common Heat Illnesses',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1A2342),
                  ),
                ),
                const SizedBox(height: 16),

                // Item 1: Heat Exhaustion (Expandable)
                _buildExpandableIllnessCard(
                  icon: Icons.thermostat,
                  iconColor: Colors.orange,
                  iconBgColor: const Color(0xFFFFF0E6),
                  title: 'Heat Exhaustion',
                  subtitle: 'MODERATE SEVERITY',
                  isExpanded: _heatExhaustionExpanded,
                  onTap: () {
                    setState(() {
                      _heatExhaustionExpanded = !_heatExhaustionExpanded;
                    });
                  },
                  expandedContent: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        'Symptoms:',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1A2342),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Heavy sweating, cold/pale/clammy skin, fast/weak pulse, nausea, muscle cramps, dizziness.',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF757575),
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'What to Do:',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1A2342),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Move to a cool place, loosen clothes, sip water, and seek medical help if symptoms worsen or last over an hour.',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF757575),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // Item 2: Heatstroke (EXPANDED)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    border: Border(
                      left: BorderSide(
                        color: const Color(0xFFE63946),
                        width: 4,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      // Header Row
                      InkWell(
                        onTap: () {
                          setState(() {
                            _heatstrokeExpanded = !_heatstrokeExpanded;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFF0F0),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.warning_rounded,
                                  color: Color(0xFFE63946),
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Heatstroke',
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF1A2342),
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      'CRITICAL EMERGENCY',
                                      style: GoogleFonts.poppins(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFFE63946),
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                _heatstrokeExpanded
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Expanded Body
                      if (_heatstrokeExpanded) ...[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              _buildBulletPoint(
                                'High body temperature (above 103°F/39.4°C)',
                              ),
                              const SizedBox(height: 12),
                              _buildBulletPoint(
                                'Confusion, dizziness, or loss of consciousness',
                              ),
                              const SizedBox(height: 20),
                              // Emergency Button
                              Container(
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [Color(0xFFFF5F26), Color(0xFFE63946)],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Call Emergency Now',
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // Item 3: Heat Cramps (Expandable)
                _buildExpandableIllnessCard(
                  icon: Icons.water_drop,
                  iconColor: Colors.blue,
                  iconBgColor: const Color(0xFFE6F0FF),
                  title: 'Heat Cramps',
                  subtitle: 'MILD SEVERITY',
                  isExpanded: _heatCrampsExpanded,
                  onTap: () {
                    setState(() {
                      _heatCrampsExpanded = !_heatCrampsExpanded;
                    });
                  },
                  expandedContent: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        'Symptoms:',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1A2342),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Muscle pain or spasms, usually in legs, arms, or abdomen during or after intense exercise.',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF757575),
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'What to Do:',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1A2342),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Stop physical activity, move to a cool place, drink water or a sports drink, and gently stretch or massage the affected muscles.',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF757575),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // Item 4: Sunburn (Expandable)
                _buildExpandableIllnessCard(
                  icon: Icons.wb_sunny_outlined,
                  iconColor: Colors.orange,
                  iconBgColor: const Color(0xFFFFF9E6),
                  title: 'Sunburn',
                  subtitle: 'MILD TO SEVERE',
                  isExpanded: _sunburnExpanded,
                  onTap: () {
                    setState(() {
                      _sunburnExpanded = !_sunburnExpanded;
                    });
                  },
                  expandedContent: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        'Symptoms:',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1A2342),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Red, painful, and warm skin, blisters, swelling, fever, and chills in severe cases.',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF757575),
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'What to Do:',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF1A2342),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Get out of the sun, apply cool compresses, take pain relievers, moisturize with aloe vera, and stay hydrated. Seek medical help for severe sunburn.',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: const Color(0xFF757575),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),

                // Advanced Safety Aid Directory Header
                Text(
                  'Advanced Safety Aid Directory',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1A2342),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Quick access to emergency services and community relief',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xFF757575),
                  ),
                ),
                const SizedBox(height: 24),

                // Card 1: SEEDS India
                _buildDirectoryCard(
                  icon: Icons.home,
                  iconColor: Colors.green,
                  iconBgColor: Colors.green.withValues(alpha: 0.1),
                  title: 'SEEDS India',
                  tag: 'NGO',
                  tagColor: Colors.green,
                  tagBgColor: Colors.green.withValues(alpha: 0.1),
                  description: 'Distributes heat-reflective cooling materials to low-income homes.',
                  contacts: [
                    _ContactItem(
                      icon: Icons.phone,
                      text: '+91-11-20904048',
                      color: Colors.green,
                    ),
                    _ContactItem(
                      icon: Icons.email,
                      text: 'Email',
                      color: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Card 2: Mahila Housing Trust (MHT)
                _buildDirectoryCard(
                  icon: Icons.local_fire_department,
                  iconColor: Colors.orange,
                  iconBgColor: Colors.orange.withValues(alpha: 0.1),
                  title: 'Mahila Housing Trust (MHT)',
                  tag: 'NGO',
                  tagColor: Colors.orange,
                  tagBgColor: Colors.orange.withValues(alpha: 0.1),
                  description: 'Installs solar-reflective cool roofs and mist systems for slums.',
                  contacts: [
                    _ContactItem(
                      icon: Icons.phone,
                      text: '+91-79-2658-1111',
                      color: Colors.orange,
                    ),
                    _ContactItem(
                      icon: Icons.language,
                      text: 'Website',
                      color: Colors.orange,
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Card 3: Eyes on the Canal
                _buildDirectoryCard(
                  icon: Icons.bar_chart,
                  iconColor: Colors.blue,
                  iconBgColor: Colors.blue.withValues(alpha: 0.1),
                  title: 'Eyes on the Canal',
                  tag: 'COMMUNITY',
                  tagColor: Colors.blue,
                  tagBgColor: Colors.blue.withValues(alpha: 0.1),
                  description: 'Buckingham Canal revival project focusing on climate resilience.',
                  contacts: [
                    _ContactItem(
                      icon: Icons.email,
                      text: 'Email',
                      color: Colors.blue,
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Card 4: TNDMA (Govt of TN)
                _buildDirectoryCard(
                  icon: Icons.campaign,
                  iconColor: Colors.red,
                  iconBgColor: Colors.red.withValues(alpha: 0.1),
                  title: 'TNDMA (Govt of TN)',
                  tag: 'GOVERNMENT',
                  tagColor: Colors.red,
                  tagBgColor: Colors.red.withValues(alpha: 0.1),
                  description: 'Official heat response and emergency coordination.',
                  contacts: [],
                  actionButtons: [
                    _ActionButton(
                      icon: Icons.phone,
                      text: 'Disaster Helpline: 1077',
                      isFullWidth: true,
                    ),
                    _ActionButton(
                      icon: Icons.local_hospital,
                      text: '108',
                      isFullWidth: false,
                    ),
                    _ActionButton(
                      icon: Icons.medical_services,
                      text: '104',
                      isFullWidth: false,
                    ),
                  ],
                ),
                const SizedBox(height: 32),

                // Find Cooling Centers Card
                Container(
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
                      // Header Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Find Cooling Centers',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF1A2342),
                            ),
                          ),
                          const Icon(
                            Icons.map,
                            color: Color(0xFF757575),
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Content Row
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Map Placeholder
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.grey[300]!,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: Stack(
                              children: [
                                // Dotted grid pattern (simulated)
                                Positioned.fill(
                                  child: CustomPaint(
                                    painter: DottedGridPainter(),
                                  ),
                                ),
                                // Map pins
                                Positioned(
                                  left: 20,
                                  top: 20,
                                  child: const Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  top: 30,
                                  child: const Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                ),
                                Positioned(
                                  left: 30,
                                  bottom: 20,
                                  child: const Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                    size: 16,
                                  ),
                                ),
                                // Current location
                                Positioned(
                                  right: 30,
                                  bottom: 30,
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Colors.blue.withValues(alpha: 0.2),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 2,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.my_location,
                                        color: Colors.blue,
                                        size: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Right Section
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NEAREST CENTER',
                                  style: GoogleFonts.poppins(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF757575),
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Anna Nagar Library',
                                  style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFF1A2342),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text(
                                      '1.2 km away',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xFF757575),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Container(
                                      width: 6,
                                      height: 6,
                                      decoration: const BoxDecoration(
                                        color: Colors.green,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      'OPEN NOW',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFFEBEE),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.arrow_forward,
                                        color: Color(0xFFE63946),
                                        size: 16,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        'Get Directions',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xFFE63946),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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

  // ignore: unused_element
  Widget _buildIllnessCard({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String subtitle,
    required bool isExpanded,
    required VoidCallback onTap,
  }) {
    return Container(
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
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF1A2342),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: GoogleFonts.poppins(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF757575),
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExpandableIllnessCard({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String subtitle,
    required bool isExpanded,
    required VoidCallback onTap,
    required Widget expandedContent,
  }) {
    return Container(
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
        children: [
          // Header Row
          InkWell(
            onTap: onTap,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: iconBgColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      icon,
                      color: iconColor,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF1A2342),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          subtitle,
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF757575),
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          // Expanded Content
          if (isExpanded) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: expandedContent,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 6,
          height: 6,
          margin: const EdgeInsets.only(top: 6, right: 12),
          decoration: const BoxDecoration(
            color: Color(0xFFE63946),
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: const Color(0xFF757575),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDirectoryCard({
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String tag,
    required Color tagColor,
    required Color tagBgColor,
    required String description,
    required List<_ContactItem> contacts,
    List<_ActionButton>? actionButtons,
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
          // Top Row
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
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
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1A2342),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: tagBgColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  tag,
                  style: GoogleFonts.poppins(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: tagColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Description
          Text(
            description,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: const Color(0xFF757575),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          // Contact Row or Action Buttons
          if (actionButtons != null && actionButtons.isNotEmpty) ...[
            // Action Buttons Column
            Column(
              children: [
                // Full width button
                if (actionButtons.any((b) => b.isFullWidth))
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 18,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          actionButtons.firstWhere((b) => b.isFullWidth).text,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                if (actionButtons.any((b) => b.isFullWidth))
                  const SizedBox(height: 12),
                // Half width buttons row
                if (actionButtons.any((b) => !b.isFullWidth)) ...[
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.local_hospital,
                                color: Colors.white,
                                size: 18,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                actionButtons.firstWhere((b) => !b.isFullWidth).text,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.medical_services,
                                color: Colors.white,
                                size: 18,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                actionButtons.lastWhere((b) => !b.isFullWidth).text,
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ] else ...[
            // Contact Row
            Row(
              children: contacts.map((contact) {
                return Row(
                  children: [
                    Icon(
                      contact.icon,
                      color: contact.color,
                      size: 18,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      contact.text,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: contact.color,
                      ),
                    ),
                    if (contact != contacts.last) const SizedBox(width: 16),
                  ],
                );
              }).toList(),
            ),
          ],
        ],
      ),
    );
  }
}

// Helper classes
class _ContactItem {
  final IconData icon;
  final String text;
  final Color color;

  _ContactItem({
    required this.icon,
    required this.text,
    required this.color,
  });
}

class _ActionButton {
  final IconData icon;
  final String text;
  final bool isFullWidth;

  _ActionButton({
    required this.icon,
    required this.text,
    required this.isFullWidth,
  });
}

// Custom painter for dotted grid
class DottedGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.withValues(alpha: 0.3)
      ..strokeWidth = 1;

    // Draw horizontal lines
    for (double y = 0; y < size.height; y += 10) {
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        paint,
      );
    }

    // Draw vertical lines
    for (double x = 0; x < size.width; x += 10) {
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, size.height),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
