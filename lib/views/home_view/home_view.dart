import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_management/core/base/view_model_provider.dart';
import 'package:shop_management/views/home_view/home_view_adaptive.dart';
import 'package:shop_management/views/home_view/home_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_management/state/bloc/daily_cubit.dart';
class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
   @override
  void initState() {
   context.read<DailyCubit>().getDailyData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  
    
 
    return ViewModelProvider(
      create: (context) => HomeViewModel(),
      builder: (context, viewModel, child) {
        return HomeViewAdaptive(model: viewModel);
      },
    );
  }
}
