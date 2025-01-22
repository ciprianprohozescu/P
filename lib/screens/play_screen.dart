import 'package:flutter/material.dart';
import '../painters/empty_staff_painter.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Empty Staff'),
      ),
      body: Center(
        // Wrap our painter in a CustomPaint widget
        child: CustomPaint(
          painter: EmptyStaffPainter(),
          // The child’s size defines how big the canvas is
          // For a single staff, let's pick some arbitrary size
          child: const SizedBox(
            width: 300,
            height: 150,
          ),
        ),
      ),
    );
  }
}
