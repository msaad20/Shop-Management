import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_management/config/router/router.dart';

import 'package:shop_management/theme/theme_config.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      routerConfig: router,
      theme: ThemeConfig.light().themeData,
      darkTheme: ThemeConfig.dark().themeData,
    );
  }
}
