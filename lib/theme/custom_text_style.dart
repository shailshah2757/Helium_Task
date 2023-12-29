import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray300,
        fontSize: 16.fSize,
      );
  static get bodyMediumPoppinsBluegray300 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumPoppinsOnSecondaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.88),
      );
  // Inter text style
  static get interErrorContainer => TextStyle(
        color: theme.colorScheme.errorContainer,
        fontSize: 5.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  // Label text style
  static get labelLarge12 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static get labelLargeErrorContainer12 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static get labelLargeGray60001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 12.fSize,
      );
  static get labelMediumDeeppurpleA100 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.deepPurpleA100,
      );
  static get labelMediumErrorContainer => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumErrorContainer_1 =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelMediumPoppins => theme.textTheme.labelMedium!.poppins;
  static get labelMediumPoppinsOnPrimary =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Title text style
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterBlack900Bold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 14.fSize,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.86),
        fontSize: 14.fSize,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
