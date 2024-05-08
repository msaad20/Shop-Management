import 'package:flutter/material.dart';
import 'package:shop_management/utils/constants/config_constant.dart';
import 'package:shop_management/utils/util_widgets/svg_image.dart';

class SlSvgIcon extends StatelessWidget {
  final String path;
  final VoidCallback? onPress;
  final double? height;

  const SlSvgIcon({
    super.key,
    required this.path,
    this.onPress,
    this.height=ConfigConstant.iconSize2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: SvgAssets.icon(
        path,
        context: context,
        height: height,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
