import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureScreen extends StatelessWidget {
  const FeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final padding = screenWidth * 0.06;

    return Scaffold(
      backgroundColor: const Color(0xFFFFF8F4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding, vertical: 28),
            child: Column(
              children: [
                Text(
                  'How We Protect Your\nCommunity',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF2C2C2C),
                    height: 1.15,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  "Built specifically for Chennai's\nneighborhoods, our community-first\napproach ensures every family gets the\nprotection they need.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 34),

                _FeatureTile(
                  icons: const [
                    _IconSpec(icon: Icons.home, color: Color(0xFFE63946)),
                    _IconSpec(
                      icon: Icons.thermostat,
                      color: Color(0xFFE63946),
                    ),
                  ],
                  title: 'Housing-Aware Risk Score',
                  description:
                      'Our AI calculates heat risk based on\nyour specific roof type (Metal Sheets\nvs. Concrete), not just the weather\noutside.',
                ),
                const SizedBox(height: 22),

                _FeatureTile(
                  icons: const [
                    _IconSpec(icon: Icons.groups, color: Color(0xFFFF5F26)),
                    _IconSpec(icon: Icons.favorite, color: Color(0xFFFF5F26)),
                  ],
                  title: 'Protecting the Vulnerable',
                  description:
                      'Specialized advisories for children,\npregnant women, and the elderly to\nprevent heatstroke and dehydration.',
                ),
                const SizedBox(height: 22),

                _FeatureTile(
                  icons: const [
                    _IconSpec(
                      icon: Icons.location_on,
                      color: Color(0xFFE63946),
                    ),
                  ],
                  title: 'Hyper-Local Canal\nMonitoring',
                  description:
                      'Precision tracking for heat pockets in\ndense settlements like Triplicane and\nKotturpuram.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FeatureTile extends StatelessWidget {
  const _FeatureTile({
    required this.icons,
    required this.title,
    required this.description,
  });

  final List<_IconSpec> icons;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 26),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < icons.length; i++) ...[
                Icon(icons[i].icon, color: icons[i].color, size: 34),
                if (i != icons.length - 1) const SizedBox(width: 16),
              ],
            ],
          ),
          const SizedBox(height: 18),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF2C2C2C),
              height: 1.2,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 16,
              color: Colors.grey[700],
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class _IconSpec {
  const _IconSpec({required this.icon, required this.color});

  final IconData icon;
  final Color color;
}

