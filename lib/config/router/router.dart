import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_management/config/router/router_extension.dart';
import 'package:shop_management/config/router/routes/navigation_shell_route.dart';


final GoRouter router = GoRouter(
  initialLocation: SlRoutes.home.path,
  routes: [
    navigationRoute,
    // ...authRoutes,
    // GoRoute(
    //     path: SlRoutes.createAd.path,
    //     builder: (context, state) => const CreateAdView(),
    //     pageBuilder: (context, state) {
    //       return AnimatedRouteBuilder.sharedAxis(
    //         context,
    //         state,
    //         const CreateAdView(),
    //         SharedAxisTransitionType.horizontal,
    //       );
    //     })
  ],
);
