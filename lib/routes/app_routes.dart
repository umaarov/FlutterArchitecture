import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/cart_list_screen/cart_list_screen.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/product_details_one_screen/product_details_one_screen.dart';
import '../presentation/product_details_screen/product_details_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String homeContainerScreen = '/home_container_screen';

  static const String homePage = '/home_page';

  static const String shopePage = '/shope_page';

  static const String productDetailsScreen = '/product_details_screen';

  static const String productDetailsOneScreen = '/product_details_one_screen';

  static const String cartListScreen = '/cart_list_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    homeContainerScreen: (context) => HomeContainerScreen(),
    productDetailsScreen: (context) => ProductDetailsScreen(),
    productDetailsOneScreen: (context) => ProductDetailsOneScreen(),
    cartListScreen: (context) => CartListScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => HomeContainerScreen()
  };
}
