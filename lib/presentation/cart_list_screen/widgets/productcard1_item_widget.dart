import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart'; // ignore: must_be_immutable

class ProductCardItemWidget extends StatelessWidget {
  const ProductCardItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray30066.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildProductImage(),
          _buildProductDetails(),
          Spacer(),
          _buildActionColumn(),
        ],
      ),
    );
  }

  Widget _buildProductImage() {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle41,
      height: 80.adaptSize,
      width: 80.adaptSize,
      radius: BorderRadius.circular(5.h),
    );
  }

  Widget _buildProductDetails() {
    return Padding(
      padding: EdgeInsets.only(left: 21.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 132.h,
            child: Text(
              "Cotton shirt Regular Fit\nCotton shirt Regular Fit",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall12,
            ),
          ),
          SizedBox(height: 5.v),
          Text("Size: M", style: theme.textTheme.bodySmall),
          SizedBox(height: 10.v),
          Text("RM 100", style: theme.textTheme.labelLarge)
        ],
      ),
    );
  }

  Widget _buildActionColumn() {
    return Padding(
      padding: EdgeInsets.only(right: 2.h, bottom: 4.v),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _buildFavoriteButton(),
          SizedBox(height: 33.v),
          _buildQuantityManager(),
        ],
      ),
    );
  }

  Widget _buildFavoriteButton() {
    return CustomIconButton(
      height: 20.adaptSize,
      width: 20.adaptSize,
      padding: EdgeInsets.all(5.h),
      decoration: IconButtonStyleHelper.outlineBlueGray,
      child: CustomImageView(
        imagePath: ImageConstant.imgCheckmark,
      ),
    );
  }

  Widget _buildQuantityManager() {
    return Container(
      width: 72.h,
      margin: EdgeInsets.only(right: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            height: 21.adaptSize,
            width: 21.adaptSize,
            padding: EdgeInsets.all(5.h),
            decoration: IconButtonStyleHelper.outlineBlueGrayTL4,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame16,
            ),
          ),
          Text("2", style: theme.textTheme.titleMedium),
          CustomIconButton(
            height: 21.adaptSize,
            width: 21.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.outlineBlueGrayTL5,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
            ),
          )
        ],
      ),
    );
  }
}
