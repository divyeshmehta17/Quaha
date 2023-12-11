import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../services/text_style_util.dart';

class QuahaCategoryListView extends StatelessWidget {
  String text;
  double height;
  QuahaCategoryListView({super.key, required this.text, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return Container(
              width: 92,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Center(
                child: Text(
                  text,
                  style: TextStyleUtil.rubikWetPaint400(
                      fontSize: 12, color: Colors.black),
                ),
              ),
            ).paddingOnly(right: 16.kw);
          }),
    );
  }
}
