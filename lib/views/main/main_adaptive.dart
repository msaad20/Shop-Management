import 'package:flutter/material.dart';
import 'package:shop_management/views/main/main_model.dart';

class MainAdaptive extends StatelessWidget {
  final MainModel viewModel;
  const MainAdaptive({
    super.key,
    required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: MainBottomNavigation(
      //   viewModel: viewModel,
      // ),
      // floatingActionButton: buildFAB(context),
      //  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: viewModel.shell,
    );
  }
}
