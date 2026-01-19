import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StepData {
  final int number;
  final String title;
  final String description;

  const StepData({
    required this.number,
    required this.title,
    required this.description,
  });
}

class VerticalStepper extends StatelessWidget {
  final List<StepData> steps;

  const VerticalStepper({
    super.key,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Dashed line
        Positioned(
          left: 24,
          top: 24,
          bottom: 24,
          child: CustomPaint(
            painter: DashedLinePainter(
              color: const Color(0xFFFF6B35),
            ),
            child: const SizedBox(width: 2),
          ),
        ),
        // Steps
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: steps.asMap().entries.map((entry) {
            final index = entry.key;
            final step = entry.value;
            final isLast = index == steps.length - 1;

            return Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5E6D3),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        '${step.number}',
                        style: GoogleFonts.inter(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFFFF6B35),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          step.title,
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2C2C2C),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          step.description,
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xFF2C2C2C),
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final Color color;

  DashedLinePainter({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // Draw dashed line from top to bottom
    const double dashWidth = 4;
    const double dashSpace = 4;
    double currentY = 0;

    while (currentY < size.height) {
      canvas.drawLine(
        Offset(0, currentY),
        Offset(0, currentY + dashWidth),
        paint,
      );
      currentY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
