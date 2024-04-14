import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../home_page/home_page.dart';
import '../shope_page/shope_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  HomeContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.homePage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottombar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottombar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Shop:
        return AppRoutes.shopePage;
      case BottomBarEnum.Notifications:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.shopePage:
        return ShopePage();
      default:
        return DefaultWidget();
    }
  }
}
