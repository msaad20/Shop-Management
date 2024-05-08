import 'package:flutter/material.dart';
import 'package:shop_management/core/models/date_model.dart';
import 'package:shop_management/utils/helpers/text_helpers.dart';

enum TextType {
  normal,
  hint,
  title,
  headline,
}

class SlText extends StatelessWidget {
  final String text;
  final TextType textType;
  double? fontSize;
  Color? fontColor;
  FontWeight? fontWeight;
  String? fontFamily;
  TextOverflow? overflow;
  TextAlign? textAlign;
  int? maxLines;
  bool? softWrap;
  SlText(
    this.text, {
    super.key,
    this.textType = TextType.normal,
    this.fontSize,
    this.fontColor,
    this.fontWeight,
    this.fontFamily,
    this.overflow,
    this.textAlign,
    this.maxLines,
    this.softWrap,
  });

  factory SlText.date(DateModel date) {
    return SlText('${date.day} - ${date.month} - ${date.year}');
  }
  factory SlText.price({
    int? price,
    TextType type = TextType.title,
    Color? color,
  }) {
    return SlText(
      priceHelper(price: price),
      textType: type,
      fontColor: color,
    );
  }
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    switch (textType) {
      case TextType.hint:
        fontSize ??= textTheme.labelLarge!.fontSize;
        fontColor ??= Theme.of(context).hintColor;
        break;
      case TextType.title:
        fontSize ??= textTheme.headlineSmall!.fontSize;
        fontWeight ??= FontWeight.w500;
        break;
      case TextType.headline:
        fontSize ??= textTheme.displaySmall!.fontSize;
        fontWeight ??= FontWeight.w500;
        break;
      case TextType.normal:
        break;
    }

    return Text(
      text,
      softWrap: softWrap,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      style: TextStyle(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      ),
    );
  }
}
