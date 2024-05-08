import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_management/core/base/view_model_provider.dart';
import 'package:shop_management/state/bloc/daily_cubit.dart';
import 'package:shop_management/views/main/main_adaptive.dart';
import 'package:shop_management/views/main/main_model.dart';

class MainView extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const MainView({
    super.key,
    required this.navigationShell,
  });
  @override
  Widget build(BuildContext context) {
  
    return ViewModelProvider(
      create: (context) => MainModel(navigationShell),
      builder: (context, viewModel, child) {
        
        return MainAdaptive(viewModel: viewModel);
      },
    );
  }
}
