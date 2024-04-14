import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnPrimary,
                    child: Column(
                      children: [
                        _buildScreenTitle(context,
                            screenTitle: "Home - Container",
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.homeContainerScreen)),
                        _buildScreenTitle(context,
                            screenTitle: "Product Details",
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.productDetailsScreen)),
                        _buildScreenTitle(context,
                            screenTitle: "Product Details One",
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.productDetailsOneScreen)),
                        _buildScreenTitle(context,
                            screenTitle: "Cart List",
                            onTapScreenTitle: () => onTapScreenTitle(
                                context, AppRoutes.cartListScreen))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          _buildTitleText("App Navigation"),
          SizedBox(height: 10.v),
          _buildSubTitleText(
              "Check your app's UI from the below demo screens of your app."),
          SizedBox(height: 5.v),
          _buildDivider()
        ],
      ),
    );
  }

  Widget _buildScreenTitle(BuildContext context,
      {required String screenTitle, Function? onTapScreenTitle}) {
    return GestureDetector(
      onTap: () => onTapScreenTitle?.call(),
      child: Container(
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            _buildTitleText(screenTitle),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            _buildDivider(appTheme.blueGray400)
          ],
        ),
      ),
    );
  }

  Widget _buildTitleText(String text) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: appTheme.black900,
                fontSize: 20.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400)),
      );

  Widget _buildSubTitleText(String text) => Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: appTheme.blueGray400,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400)),
      );

  Widget _buildDivider([Color? color]) =>
      Divider(height: 1.v, thickness: 1.v, color: color ?? appTheme.black900);

  void onTapScreenTitle(BuildContext context, String routeName) {
    if (ModalRoute.of(context)!.settings.name != routeName) {
      // Prevents reloading the same screen
      Navigator.pushNamed(context, routeName);
    }
  }
}
