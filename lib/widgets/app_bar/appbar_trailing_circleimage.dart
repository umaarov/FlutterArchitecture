import 'package:flutter/material.dart';
import '../../core/app_export.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarTrailingCircleimage extends StatelessWidget {
  AppbarTrailingCircleimage({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.circleBorder20,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 40.adaptSize,
          width: 40.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
      ),
    );
  }
}
