import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get outlineGrayTL17 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(17.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray50.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray30066.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGrayTL4 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray50.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              3,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGrayTL5 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(5.h),
        border: Border.all(
          color: appTheme.blueGray100,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray50.withOpacity(0.2),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      this.child,
      this.onTap})
      : super(
          key: key,
        );

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
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
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
                  color: theme.colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(15.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.gray30066.withOpacity(0.25),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        4,
                      ),
                    )
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}
