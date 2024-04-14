import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductDetails1ItemWidget extends StatelessWidget {
  ProductDetails1ItemWidget({Key? key, this.onTapImgRectangle})
      : super(
          key: key,
        );

  VoidCallback? onTapImgRectangle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      child: Align(
        alignment: Alignment.center,
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle34,
          height: 80.adaptSize,
          width: 80.adaptSize,
          radius: BorderRadius.circular(
            10.h,
          ),
          onTap: () {
            onTapImgRectangle?.call();
          },
        ),
      ),
    );
  }
}
