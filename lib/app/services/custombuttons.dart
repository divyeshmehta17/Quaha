import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/responsive_size.dart';

class NextButton extends StatelessWidget {
  final Function()? onTap;
  final Color color;
  final Color iconColor;
  final int currentPage; // Current page, e.g., 1 for the first page

  NextButton({
    Key? key,
    required this.onTap,
    required this.color,
    required this.iconColor,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 60.kw,
          height: 60.kh,
          child: CustomPaint(
            painter: CircularSliderPainter(currentPage),
            child: Container(
              width: 40.kw,
              height: 40.kh,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_forward_rounded,
                color: iconColor,
              ),
            ).paddingAll(10),
          ),
        ),
      ),
    );
  }
}

class CircularSliderPainter extends CustomPainter {
  final int currentPage;

  CircularSliderPainter(this.currentPage);

  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = 2.0;
    final radius = size.width / 2;

    final paint = Paint()
      ..color =
          Colors.white // Initial color (for pages other than the current page)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final bluePaint = Paint()
      ..color = Colors.blue // Color for the current page
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawCircle(
      Offset(radius, radius),
      radius - strokeWidth / 1,
      paint,
    );

    // Calculate the angle based on the current page
    final sweepAngle = 2 * currentPage * 3.14159265359 / 5; // 1/5th of a circle

    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(radius, radius), radius: radius - strokeWidth / 2),
      -3.14159265359 / 2, // Start angle
      sweepAngle, // Sweep angle
      false,
      bluePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
