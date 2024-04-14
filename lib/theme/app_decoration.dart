import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.5),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGreenEf => BoxDecoration(
        color: appTheme.green300Ef,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
// Gradient decorations
  static BoxDecoration get gradientPrimaryToGreenEf => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(0.99, 0.5),
          colors: [theme.colorScheme.primary, appTheme.green300Ef],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray30066,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              5,
              5,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGray30066 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray30066,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              10,
              10,
            ),
          )
        ],
      );
  static BoxDecoration get outlineGreenEf => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.green300Ef,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );
// Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );
  static BorderRadius get customBorderBL2 => BorderRadius.vertical(
        bottom: Radius.circular(2.h),
      );
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(20.h),
      );
  static BorderRadius get customBorderTL5 => BorderRadius.vertical(
        top: Radius.circular(5.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}
