import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_management/config/router/router_extension.dart';
import 'package:shop_management/core/models/date_model.dart';
import 'package:shop_management/gen/assets.gen.dart';
import 'package:shop_management/state/bloc/daily_cubit.dart';
import 'package:shop_management/utils/util_widgets/page_wrapper.dart';
import 'package:shop_management/views/home_view/home_view_model.dart';
import 'package:shop_management/widgets/daily/daily_card.dart';
import 'package:shop_management/widgets/sl_app_bar.dart';
import 'package:shop_management/widgets/sl_container.dart';
import 'package:shop_management/widgets/sl_svg_icon.dart';
import 'package:shop_management/widgets/sl_text.dart';
import 'package:shop_management/utils/constants/config_constant.dart';

class HomeViewAdaptive extends StatelessWidget {
  final HomeViewModel model;
  const HomeViewAdaptive({super.key, required this.model});



  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        appBar: SlAppBar(
          title: SlText(
            SlRoutes.home.data.title,
            textType: TextType.title,
            fontWeight: FontWeight.normal,
          ),
          leading: buildLeading(),
        ),
        body: PageWrapper(
          child: buildBody(),
        ));
  }

  Widget buildLeading() {
    return SlSvgIcon(
      path: Assets.icons.menuBurger,
    );
  }

  Widget buildBody() {
    return BlocBuilder<DailyCubit, DailyState>(
      builder: (context, state) {
              print('state$state');
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SlText(
              tr('pages.home.dashboard'),
              textType: TextType.headline,
            ),
            ConfigConstant.sizedBoxH4,
            buildTodayHeading(),
            ConfigConstant.sizedBoxH2,
      
            (state is DailySuccess)
                ? DailyCard(
                    data: state.data,
                  )
                : (state is DailyInitial)
                    ? DailyCard.loading(context)
                    : const DailyCard(
                        data: null,
                      ),
          ],
        );
      },
    );
  }

  Widget buildTodayHeading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SlText(
          tr('pages.home.today'),
          textType: TextType.title,
        ),
        SlContainer(
          content: SlText.date(
            DateModel.today(),
          ),
        ),
      ],
    );
  }
}
