 import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/listpopulartext_item_widget.dart';
import 'widgets/productcard_item_widget.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ShopePage extends StatelessWidget {
  ShopePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              _buildRowsearch(context),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(right: 7.h),
                child: _buildRowrecommended(
                  context,
                  recommended: "Shope by Category ",
                  viewallOne: "View All",
                ),
              ),
              SizedBox(height: 11.v),
              _buildListpopulartext(context),
              SizedBox(height: 34.v),
              Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: _buildRowrecommended(
                  context,
                  recommended: "Recommended",
                  viewallOne: "View All",
                ),
              ),
              SizedBox(height: 25.v),
              _buildProductcard(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowsearch(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomSearchView(
            controller: searchController,
            hintText: "Search in here",
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgCart,
          height: 25.adaptSize,
          width: 25.adaptSize,
          margin: EdgeInsets.only(
            left: 22.h,
            top: 12.v,
            bottom: 12.v,
          ),
          onTap: () {
            onTapImgCartone(context);
          },
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildListpopulartext(BuildContext context) {
    return SizedBox(
      height: 90.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 23.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListpopulartextItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildProductcard(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 259.v,
        crossAxisCount: 2,
        mainAxisSpacing: 20.h,
        crossAxisSpacing: 20.h,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (context, index) {
        return ProductcardItemWidget(
          onTapProductcard: () {
            onTapProductcard(context);
          },
        );
      },
    );
  }

  /// Common widget
  Widget _buildRowrecommended(
    BuildContext context, {
    required String recommended,
    required String viewallOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          recommended,
          style: CustomTextStyles.titleMediumBold_1.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          viewallOne,
          style: CustomTextStyles.bodyMediumPrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        )
      ],
    );
  }

  /// Navigates to the cartListScreen when the action is triggered.
  onTapImgCartone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cartListScreen);
  }

  /// Navigates to the productDetailsScreen when the action is triggered.
  onTapProductcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.productDetailsScreen);
  }
}
