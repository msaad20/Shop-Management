import 'package:flutter/material.dart';
import 'package:shop_management/theme/theme_constants.dart';
import 'package:shop_management/utils/constants/config_constant.dart';

class SlContainer extends StatelessWidget {
  final Widget content;
  final EdgeInsets? padding;
  const SlContainer({
    super.key,
    required this.content,
    this.padding = const EdgeInsets.all(ConfigConstant.padding0),
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: ConfigConstant.circlarRadius1,
          color: theme.cardColor,
          border: Border.all(
            color: theme.dividerColor,
          )),
      padding: padding,
      child: content,
    );
  }
}
