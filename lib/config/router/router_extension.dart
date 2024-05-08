import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_management/gen/assets.gen.dart';
import 'package:shop_management/views/main/main_tabbar.dart';

enum SlRoutes {
  //main,
  home,
  dailyEditorView,

  // Add your new routes here (e.g., yourNewRoute1, yourNewRoute2)
}

class SlRouterData {
  final String title;
  final String? shortTitle;
  final String subtitle;
  final MainTabBarItem? tab;

  SlRouterData({
    required this.title,
    required this.subtitle,
    required this.tab,
    this.shortTitle,
  });
}

extension RouterExtension on SlRoutes {
  String get path {
    switch (this) {
      case SlRoutes.home:
        return '/';
      case SlRoutes.dailyEditorView:
        return '/daily_editor_view';
    }
  }

  String get name {
    switch (this) {
      case SlRoutes.home:
        return 'home';
      case SlRoutes.dailyEditorView:
        return 'daily_editor_view';

      // Add cases for your new routes here (e.g., return 'yourNewRoute1'; return 'yourNewRoute2';)
    }
  }

  SlRouterData get data {
    switch (this) {
      case SlRoutes.home:
        return SlRouterData(
          title: tr('pages.home.title'),
          subtitle: tr('pages.home.subtitle'),
          tab: MainTabBarItem(
            navigatorKey: GlobalKey<NavigatorState>(),
            router: SlRoutes.home,
            iconPath: Assets.icons.home,
          ),
        );
  case SlRoutes.dailyEditorView:
      return SlRouterData(
        title:tr('pages.dailyEditor.title'),
        subtitle:tr('pages.dailyEditor.subtitle'),
        tab:null,
      );
    }
  }
}
