import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart'; // ignore: must_be_immutable

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 350.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 19.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Trade-in and save ",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  width: 125.h,
                  child: Text(
                    "Enjoy Great unfront saving\nEnjoy Great unfront saving  ",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 12.v),
                _buildButtonText(context)
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle12,
            height: 140.v,
            width: 134.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            margin: EdgeInsets.only(
              left: 52.h,
              top: 2.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonText(BuildContext context) {
    return CustomElevatedButton(
      width: 100.h,
      text: "Learn More",
      margin: EdgeInsets.only(left: 4.h),
      buttonStyle: CustomButtonStyles.fillGreenEf,
      buttonTextStyle: CustomTextStyles.bodySmall12,
    );
  }
}
