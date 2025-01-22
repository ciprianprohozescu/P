import 'package:flutter/material.dart';

class EmptyStaffPainter extends CustomPainter {
  // You can add configurable properties here if needed
  // e.g. number of lines, spacing, etc.

  @override
  void paint(Canvas canvas, Size size) {
    // 1. Define basic paint for staff lines
    final staffPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1.0;

    // 2. Decide how many staff lines you want
    //    Typically, a single staff has 5 lines
    const int numberOfLines = 5;

    // 3. Decide spacing between lines
    //    For demonstration, let's use 10px
    const double lineSpacing = 10.0;

    // 4. Decide where the staff should start vertically
    //    Let’s say 50px from the top
    final double staffTop = 50.0;

    for (int i = 0; i < numberOfLines; i++) {
      final double y = staffTop + (i * lineSpacing);
      // Draw a horizontal line across the canvas
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        staffPaint,
      );
    }

    // If you want multiple staves, or a grand staff, you’d repeat
    // the lines with some vertical offset and maybe draw a brace, clef, etc.
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // For an empty staff that doesn't change, return false.
    // If you add dynamic properties later (e.g., spacing,
    // number of lines), you’d compare them with oldDelegate.
    return false;
  }
}