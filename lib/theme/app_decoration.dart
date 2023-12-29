import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillBlue20059 => BoxDecoration(
        color: appTheme.blue20059,
      );
  static BoxDecoration get fillLightBlueA => BoxDecoration(
        color: appTheme.lightBlueA200.withOpacity(0.39),
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red100,
      );
  static BoxDecoration get fillTealB => BoxDecoration(
        color: appTheme.teal1002b,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow50,
      );

  // Outline decorations
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onError,
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(0.08),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineSecondaryContainer1 => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder29 => BorderRadius.circular(
        29.h,
      );
  static BorderRadius get circleBorder6 => BorderRadius.circular(
        6.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder131 => BorderRadius.circular(
        131.h,
      );
  static BorderRadius get roundedBorder144 => BorderRadius.circular(
        144.h,
      );
  static BorderRadius get roundedBorder9 => BorderRadius.circular(
        9.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
