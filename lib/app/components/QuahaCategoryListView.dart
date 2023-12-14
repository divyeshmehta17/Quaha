import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/responsive_size.dart';

import '../services/text_style_util.dart';

class QuahaCategoryListView extends StatelessWidget {
  List<String>? text;
  double height;
  List<String>? imagePath;
  QuahaCategoryListView(
      {super.key, this.text, required this.height, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (BuildContext context, index) {
            return Container(
              width: 92,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath![index]), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  text![index],
                  style: TextStyleUtil.rubikWetPaint400(
                    fontSize: 12,
                  ),
                ),
              ),
            ).paddingOnly(right: 16.kw);
          }),
    );
  }
}
