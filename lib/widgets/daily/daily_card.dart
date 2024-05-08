import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_management/core/models/daily_model.dart';
import 'package:shop_management/theme/theme_constants.dart';
import 'package:shop_management/utils/constants/config_constant.dart';
import 'package:shop_management/utils/helpers/text_helpers.dart';
import 'package:shop_management/widgets/sl_container.dart';
import 'package:shop_management/widgets/sl_text.dart';

class DailyCard extends StatelessWidget {
  final DailyModel? data;
  const DailyCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return SlContainer(
      content: data != null ? buildBody() : buildNullBody(),
      padding: const EdgeInsets.all(ConfigConstant.padding2),
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        buildDailySales(),
        const Divider(),
        ConfigConstant.sizedBoxH2,
        if (data?.expenses != null) buildExpenses(),
        ConfigConstant.sizedBoxH2,
        buildExpenses(),
      ],
    );
  }

  Widget buildNullBody() {
    return SlContainer(
      content: Center(
        child: SlText(
          tr("msg.response_null"),
        ),
      ),
    );
  }

  Widget buildDailySales() {
    return buildRow([
      SlText(tr('pages.home.sales')),
      SlText.price(
        price: data?.totalSales,
        color: ThemeConstants.positive,
      ),
    ]);
  }

  Widget buildExpenses() {
    final expenses = data?.expenses;
    return ListView.builder(
      shrinkWrap: true,
      physics:NeverScrollableScrollPhysics(),
        itemCount: expenses?.length,
        itemBuilder: (context, index) {
          return buildRow([
            SlText(
              expenses?[index].name ?? '',
            ),
            ConfigConstant.sizedBoxH0,
            SlText.price(
              price: expenses?[index].price ?? 0,
              type: TextType.normal,
            ),
          ]);
        });
  }

  Widget buildTotalExpense() {
    return buildRow([
      SlText(tr('pages.home.expenses')),
      SlText.price(
        price: data?.totalExpenses,
        color: ThemeConstants.negative,
      ),
    ]);
  }

  Widget buildRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: children,
    );
  }

  static loading(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).canvasColor,
      highlightColor: Theme.of(context).highlightColor,
      child:const SlContainer(
        content: Text('shimmer'),
        padding: EdgeInsets.all(ConfigConstant.padding2),
      ),
    );
  }
}
