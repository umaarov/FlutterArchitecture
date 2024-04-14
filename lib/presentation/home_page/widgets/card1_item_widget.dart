import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class Card1ItemWidget extends StatelessWidget {
  const Card1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 180.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle19,
            height: 200.v,
            width: 180.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 142.h,
                    right: 8.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillGreenEf.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL2,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "50%",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Text(
                        "OFF",
                        style: theme.textTheme.bodySmall,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 124.v),
                Container(
                  width: 185.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 13.v,
                  ),
                  decoration: AppDecoration.fillBlack.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL10,
                  ),
                  child: Text(
                    "15k Sold Out",
                    style: theme.textTheme.titleSmall,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
