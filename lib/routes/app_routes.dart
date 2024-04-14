import 'package:erp/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cart_list_screen/cart_list_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/product_details_one_screen/product_details_one_screen.dart';
import '../presentation/product_details_screen/product_details_screen.dart';
import '../presentation/sign_in_tab_container_screen/sign_in_tab_container_screen.dart'; // ignore_for_file: must_be_immutable

class AppRoutes {
  static const String mainScreen = '/main_screen';

  static const String signInPage = '/sign_in_page';

  static const String signInTabContainerScreen =
      '/sign_in_tab_container_screen';

  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String shopePage = '/shope_page';

  static const String productDetailsScreen = '/product_details_screen';

  static const String productDetailsOneScreen = '/product_details_one_screen';

  static const String cartListScreen = '/cart_list_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    mainScreen: (context) => MainScreen(),
    signInTabContainerScreen: (context) => SignInTabContainerScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    productDetailsScreen: (context) => ProductDetailsScreen(),
    productDetailsOneScreen: (context) => ProductDetailsOneScreen(),
    cartListScreen: (context) => CartListScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => MainScreen()
  };
}
