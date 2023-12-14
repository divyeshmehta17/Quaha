import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/responsive_size.dart';

class NextButton extends StatelessWidget {
  final Function()? onTap;
  final Color color;
  final Color iconColor;
  final double currentPage; // Current page, e.g., 1 for the first page

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
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 40.kw,
              height: 40.kh,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Icon(
                Icons.arrow_forward_rounded,
                color: iconColor,
              ),
            ).paddingAll(10),
            SizedBox(
                height: 60.kh,
                width: 60.kw,
                child: CircularProgressIndicator(
                  value: currentPage,
                  strokeWidth: 2,
                  backgroundColor: Colors.white,
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
