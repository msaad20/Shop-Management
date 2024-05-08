import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

export 'package:animations/src/shared_axis_transition.dart';
import 'package:go_router/go_router.dart';

class AnimatedRouteBuilder {
  static CustomTransitionPage fadeThrough(
    BuildContext context,
    GoRouterState state,
    Widget child,
  ) {
    return CustomTransitionPage(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        );
      },
    );
  }

  static CustomTransitionPage sharedAxis(
    BuildContext context,
    GoRouterState state,
    Widget child,
    SharedAxisTransitionType type,
  ) {
    return CustomTransitionPage(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SharedAxisTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          transitionType: type,
          child: child,
        );
      },
    );
  }

  static CustomTransitionPage fadeScale(
    BuildContext context,
    GoRouterState state,
    Widget child,
  ) {
    return CustomTransitionPage(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeScaleTransition(
          animation: animation,
          child: child,
        );
      },
    );
  }
}
