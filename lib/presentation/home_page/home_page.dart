import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/card1_item_widget.dart';
import 'widgets/card_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 26.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCard(context),
              SizedBox(height: 40.v),
              _buildRowshockingsale(context),
              SizedBox(height: 32.v),
              _buildCard1(context),
              SizedBox(height: 32.v),
              _buildRowgetrm1000off(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "Welcome Back!",
              margin: EdgeInsets.only(right: 27.h),
            ),
            SizedBox(height: 4.v),
            AppbarTitle(
              text: "Rostam Sadiqi",
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse1,
          margin: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 8.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return SizedBox(
      height: 180.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 20.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 14.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return CardItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowshockingsale(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Shocking Sale",
            style: CustomTextStyles.titleMediumBold_1,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "View All",
              style: CustomTextStyles.bodyMediumPrimary,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCard1(BuildContext context) {
    return SizedBox(
      height: 200.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 21.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 15.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildBuynow(BuildContext context) {
    return CustomElevatedButton(
      width: 95.h,
      text: "Buy Now",
      buttonTextStyle: CustomTextStyles.bodySmall12,
    );
  }

  /// Section Widget
  Widget _buildRowgetrm1000off(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 21.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.gradientPrimaryToGreenEf.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 9.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get RM10.00 OFF",
                  style: CustomTextStyles.titleMediumOnPrimary,
                ),
                SizedBox(height: 7.v),
                SizedBox(
                  width: 203.h,
                  child: Text(
                    "Spen min RM100.00 to get free delivery and promo voucher for your next purchase. ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                _buildBuynow(context)
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle26,
            height: 111.v,
            width: 129.h,
            margin: EdgeInsets.only(
              left: 17.h,
              bottom: 9.v,
            ),
          )
        ],
      ),
    );
  }
}
