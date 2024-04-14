import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/productcard1_item_widget.dart'; // ignore_for_file: must_be_immutable

class CartListScreen extends StatelessWidget {
  CartListScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 21.h,
            vertical: 26.v,
          ),
          child: Column(
            children: [
              _buildProductcard(context),
              SizedBox(height: 45.v),
              _buildRowpromocode(context),
              SizedBox(height: 32.v),
              _buildRowsubtotal(context),
              SizedBox(height: 14.v),
              Divider(),
              SizedBox(height: 14.v),
              _buildRowtotal(context),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                height: 45.v,
                width: 252.h,
                text: "Checkout RM 2,520",
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
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
      leadingWidth: 56.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 10.v,
          bottom: 10.v,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "My Carts",
      ),
      actions: [
        AppbarSubtitle(
          text: "Delete",
          margin: EdgeInsets.symmetric(
            horizontal: 22.h,
            vertical: 20.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildProductcard(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Productcard1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowpromocode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextFormField(
            width: 244.h,
            controller: promoCodeController,
            hintText: "Promo Code",
            textInputAction: TextInputAction.done,
          ),
          CustomElevatedButton(
            height: 45.v,
            width: 122.h,
            text: "Apply",
            buttonStyle: CustomButtonStyles.fillPrimary,
            buttonTextStyle: theme.textTheme.titleSmall!,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowsubtotal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sub-total",
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 19.v),
            Text(
              "Voucher",
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 20.v),
            Text(
              "Delivery Fee",
              style: theme.textTheme.bodyLarge,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "RM 2,600",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 17.v),
            Text(
              "-RM 100",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 19.v),
            Text(
              "RM 20",
              style: theme.textTheme.titleMedium,
            )
          ],
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowtotal(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              "Total",
              style: CustomTextStyles.titleMediumBold_1,
            ),
          ),
          Text(
            "RM 2,520",
            style: CustomTextStyles.titleMediumBold_1,
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
