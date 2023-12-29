import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/theme/theme_helper.dart';

// ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
    this.imagePath,
  }) : super(
          key: key,
        );

  String? imagePath;

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.deepPurpleA100,
                  borderRadius: BorderRadius.circular(22.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900,
        borderRadius: BorderRadius.circular(13.h),
      );
  static BoxDecoration get outlinePink => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(22.h),
        border: Border.all(
          color: appTheme.pink300,
          width: 3.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get outlinePinkTL35 => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(35.h),
        border: Border.all(
          color: appTheme.pink30001,
          width: 3.h,
        ),
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onError,
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.08),
          width: 1.h,
        ),
      );
}
