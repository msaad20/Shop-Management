import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shop_management/service_locator.dart';
import 'package:shop_management/state/bloc/daily_cubit.dart';

class ProviderScope extends StatelessWidget {
  final Widget child;
  const ProviderScope({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DailyCubit>(create: (context) => sl<DailyCubit>())
      ],
      //    child: _multiProvider(child: child),
      child: child,
    );
  }

  // _multiProvider({required Widget child}) {
  //   return MultiProvider(
  //     providers: [
  //       ListenableProvider<ThemeProvider>(
  //         create: (context) => sl<ThemeProvider>(),
  //       ),
  //     ],
  //     child: child,
  //   );
  // }
}
