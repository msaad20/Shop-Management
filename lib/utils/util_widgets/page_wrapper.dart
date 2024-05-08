import 'package:flutter/material.dart';
import 'package:shop_management/utils/constants/config_constant.dart';

class PageWrapper extends StatelessWidget {
  final Widget child;
  const PageWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ConfigConstant.padding2)
            .copyWith(top: ConfigConstant.padding2),
        child: child,
      ),
    );
  }
}
