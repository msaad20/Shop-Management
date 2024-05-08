import 'package:flutter/material.dart';
import 'package:shop_management/config/router/router_extension.dart';

class MainTabBarItem {
  final GlobalKey<NavigatorState> navigatorKey;
  final SlRoutes router;
  final String iconPath;

  String get label {
    return router.data.title;
  }

  MainTabBarItem({
    required this.navigatorKey,
    required this.router,
    required this.iconPath,
  });
}
