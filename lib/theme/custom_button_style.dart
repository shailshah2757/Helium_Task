import 'dart:ui';
import 'package:tasks/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:tasks/theme/theme_helper.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineBlack => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        side: BorderSide(
          color: appTheme.black900.withOpacity(0.33),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
