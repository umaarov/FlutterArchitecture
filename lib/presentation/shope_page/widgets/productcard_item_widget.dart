import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_icon_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget({Key? key, this.onTapProductcard})
      : super(
          key: key,
        );

  VoidCallback? onTapProductcard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapProductcard?.call();
      },
      child: Container(
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 180.v,
              width: 183.h,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle31,
                    height: 180.v,
                    width: 183.h,
                    radius: BorderRadius.vertical(
                      top: Radius.circular(5.h),
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.h, 15.v, 10.h, 135.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildRating(context),
                          CustomIconButton(
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            padding: EdgeInsets.all(6.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFavorite,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "Cotton shirt Regular Fit",
                  style: CustomTextStyles.bodySmall12,
                ),
              ),
            ),
            SizedBox(height: 8.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 1.v,
                  ),
                  child: Text(
                    "RM 100.00",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 68.h),
                  child: CustomIconButton(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    padding: EdgeInsets.all(4.h),
                    decoration: IconButtonStyleHelper.fillGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgNavShop,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 19.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRating(BuildContext context) {
    return CustomElevatedButton(
      height: 19.v,
      width: 47.h,
      text: "4.9",
      margin: EdgeInsets.only(
        top: 6.v,
        bottom: 5.v,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 7.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgSignal,
          height: 11.v,
          width: 12.h,
        ),
      ),
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }
}
