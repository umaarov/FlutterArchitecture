import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ListpopulartextItemWidget extends StatelessWidget {
  const ListpopulartextItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGreenEf.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 80.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse2,
            height: 45.adaptSize,
            width: 45.adaptSize,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            "Popular",
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
