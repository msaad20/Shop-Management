import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_management/config/router/router_extension.dart';
import 'package:shop_management/views/home_view/home_view.dart';
import 'package:shop_management/views/main/main_view.dart';
import 'package:shop_management/config/router/route_builder/animated_route_builder.dart';
import 'package:shop_management/views/daily_editor_view/daily_editor_view.dart';

final StatefulShellRoute navigationRoute = StatefulShellRoute.indexedStack(
    branches: [
      StatefulShellBranch(
        navigatorKey: SlRoutes.home.data.tab!.navigatorKey,
        routes: [
          GoRoute(
            path: SlRoutes.home.path,
            routes: [
              GoRoute(
                path: 'daily_editor_view',
                pageBuilder: (context, state) => AnimatedRouteBuilder.fadeScale(
                  context,
                  state,
                  const DailyEditorView(),
                ),
              )
            ],
            builder: (context, state) {
              return const HomeView();
            },
          ),
        ],
      ),
    ],
    builder: (context, state, navigationShell) {
      return MainView(
        navigationShell: navigationShell,
      );
    });
