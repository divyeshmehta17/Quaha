import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quaha/app/services/colors.dart';
import 'package:quaha/app/services/responsive_size.dart';

class QuahaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final double? leadingWidth;
  final Widget? leading;
  final bool? centerTitle;
  final TextStyle? textStyle;
  final bool? bgcolor;
  List<Widget>? actions;
  final Color? color;
  final Function()? ontap;
  bool isLeading;
  QuahaAppBar({
    Key? key,
    this.title,
    this.actions,
    this.centerTitle,
    this.isLeading = true,
    this.leading,
    this.color,
    this.ontap,
    this.textStyle,
    this.bgcolor,
    this.leadingWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      titleTextStyle: textStyle,
      elevation: 0,
      centerTitle: centerTitle,
      actions: actions,
      leadingWidth: leadingWidth,
      leading: leading ??
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              CupertinoIcons.back,
              size: 24.kw,
              color: Colors.white,
            ),
          ),
      backgroundColor: color ?? context.brandColor1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
