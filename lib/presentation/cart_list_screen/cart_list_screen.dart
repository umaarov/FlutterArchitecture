import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/productcard1_item_widget.dart';

class CartListScreen extends StatelessWidget {
  CartListScreen({Key? key}) : super(key: key);

  final TextEditingController promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppbar(context),
        body: SingleChildScrollView( // Changed to SingleChildScrollView for better handling of smaller screens
          padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 26.v),
          child: Column(
            children: [
              _buildProductList(context),
              SizedBox(height: 45.v),
              _buildPromoCodeRow(context),
              SizedBox(height: 32.v),
              _buildSubtotalRow(context),
              Divider(),
              SizedBox(height: 14.v),
              _buildTotalRow(context),
              SizedBox(height: 30.v),
              _checkoutButton(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.only(left: 21.h, top: 10.v, bottom: 10.v),
          onTap: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: AppbarTitle(text: "My Carts"),
        actions: [AppbarSubtitle(text: "Delete", margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 20.v))]
    );
  }

  Widget _buildProductList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (_, index) => SizedBox(height: 20.v),
      itemCount: 3,
      itemBuilder: (_, index) => ProductCardItemWidget(),
    );
  }

  Widget _buildPromoCodeRow(BuildContext context) {
    return Row(
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
    );
  }

  Widget _buildSubtotalRow(BuildContext context) {
    // Ensure the style used here is non-nullable by providing a fallback default style
    TextStyle bodyLargeStyle = theme.textTheme.bodyLarge ?? TextStyle(fontSize: 16.0);  // Example fallback style
    TextStyle titleMediumStyle = theme.textTheme.titleMedium ?? TextStyle(fontSize: 14.0);  // Example fallback style

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildColumnTexts(["Sub-total", "Voucher", "Delivery Fee"], bodyLargeStyle),
        _buildColumnTexts(["RM 2,600", "-RM 100", "RM 20"], titleMediumStyle)
      ],
    );
  }

  Widget _buildColumnTexts(List<String> texts, TextStyle style) {
    // Here the style is already guaranteed to be non-nullable
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: texts.map((text) => Padding(
        padding: EdgeInsets.only(bottom: 19.v),
        child: Text(text, style: style),
      )).toList(),
    );
  }


  Widget _buildTotalRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Total", style: CustomTextStyles.titleMediumBold_1),
        Text("RM 2,520", style: CustomTextStyles.titleMediumBold_1)
      ],
    );
  }

  Widget _checkoutButton(BuildContext context) {
    return CustomElevatedButton(
      height: 45.v,
      width: 252.h,
      text: "Checkout RM 2,520",
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: theme.textTheme.titleSmall!,
    );
  }
}
