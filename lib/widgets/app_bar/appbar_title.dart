import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/theme/custom_text_style.dart';
import 'package:tasks/theme/theme_helper.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
    this.alignment,
  }) : super(
          key: key,
        );

  String text;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleLargePoppins.copyWith(
            color: appTheme.black900,
          ),
        ),
      ),
    );
  }
}
