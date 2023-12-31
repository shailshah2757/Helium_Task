import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarTrailingIconbutton extends StatelessWidget {
  AppbarTrailingIconbutton({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

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
        child: CustomIconButton(
          padding: const EdgeInsets.all(5),
          height: 35.adaptSize,
          width: 35.adaptSize,
          decoration: IconButtonStyleHelper.fillGray,
          child: CustomImageView(
            imagePath: ImageConstant.imgCalendar,
          ),
        ),
      ),
    );
  }
}
