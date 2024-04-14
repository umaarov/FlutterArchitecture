import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';
import 'widgets/product_details1_item_widget.dart';

class ProductDetailsOneScreen extends StatelessWidget {
  const ProductDetailsOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStack(context),
              SizedBox(height: 29.v),
              _buildProductdetails(context),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSignal,
                      height: 18.v,
                      width: 20.h,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "4.9",
                        style: CustomTextStyles.titleMediumBold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "(85)",
                        style: CustomTextStyles.bodySmallGray400,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Reviews",
                        style: CustomTextStyles.bodySmall12,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "Men Cotton shirt Regular Fit",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "RM100.00",
                  style: CustomTextStyles.titleMediumBold_1,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "Select Size",
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 14.v),
              _buildOtpview(context),
              SizedBox(height: 49.v),
              _buildRowaddtocart(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
      height: 394.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle33394x428,
            height: 394.v,
            width: 428.h,
            radius: BorderRadius.vertical(
              bottom: Radius.circular(20.h),
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 15.v,
              margin: EdgeInsets.only(bottom: 28.v),
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 5,
                effect: ScrollingDotsEffect(
                  spacing: 15,
                  activeDotColor: theme.colorScheme.primary,
                  dotColor: appTheme.blueGray100,
                  dotHeight: 15.v,
                  dotWidth: 15.h,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductdetails(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 80.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20.h,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return ProductDetails1ItemWidget(
              onTapImgRectangle: () {
                onTapImgRectangle(context);
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOtpview(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 187.h,
      ),
      child: CustomPinCodeTextField(
        context: context,
        onChanged: (value) {},
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomOutlinedButton(
      height: 35.v,
      width: 36.h,
      text: "-",
      margin: EdgeInsets.only(top: 1.v),
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }

  /// Section Widget
  Widget _buildTf1(BuildContext context) {
    return CustomOutlinedButton(
      height: 35.v,
      width: 36.h,
      text: "+",
      margin: EdgeInsets.only(top: 1.v),
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }

  /// Section Widget
  Widget _buildAddtocart(BuildContext context) {
    return CustomElevatedButton(
      height: 45.v,
      width: 193.h,
      text: "Add to cart",
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: theme.textTheme.titleSmall!,
      onPressed: () {
        onTapAddtocart(context);
      },
    );
  }

  /// Section Widget
  Widget _buildRowaddtocart(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 122.h,
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTf(context),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "2",
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  _buildTf1(context)
                ],
              ),
            ),
            _buildAddtocart(context)
          ],
        ),
      ),
    );
  }

  /// Navigates to the productDetailsScreen when the action is triggered.
  onTapImgRectangle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailsScreen);
  }

  /// Navigates to the cartListScreen when the action is triggered.
  onTapAddtocart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartListScreen);
  }
}
