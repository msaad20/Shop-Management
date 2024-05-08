import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_management/core/base/view_model_provider.dart';
import 'package:shop_management/core/models/daily_model.dart';
import 'package:shop_management/utils/constants/config_constant.dart';

import 'package:shop_management/views/daily_editor_view/daily_editor_model.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_management/config/router/router_extension.dart';
import 'package:shop_management/core/models/date_model.dart';
import 'package:shop_management/gen/assets.gen.dart';
import 'package:shop_management/utils/util_widgets/page_wrapper.dart';
import 'package:shop_management/views/home_view/home_view_model.dart';
import 'package:shop_management/widgets/sl_app_bar.dart';
import 'package:shop_management/widgets/sl_container.dart';
import 'package:shop_management/widgets/sl_text.dart';
import 'package:shop_management/widgets/sl_text_field.dart';

part  'daily_editor_adaptive.dart';
class DailyEditorView extends StatefulWidget {
  const DailyEditorView({
    super.key,
  });

  @override
  State<DailyEditorView> createState() => _DailyEditorViewState();
}

class _DailyEditorViewState extends State<DailyEditorView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider(
      create: (context) => DailyEditorViewModel(),
      builder: (context, viewModel, child) {
        return DailyEditorAdaptive(model: viewModel,);
      },
    );
  }
}
