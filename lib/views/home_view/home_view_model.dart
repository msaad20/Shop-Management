import 'package:shop_management/core/base/base_view_model.dart';
import 'package:shop_management/core/database/databases/daily/daily_database.dart';
import 'package:shop_management/core/models/daily_model.dart';
import 'package:shop_management/utils/helpers/app_helper.dart';

class HomeViewModel extends BaseViewModel {
   DailyModel? _dailyModel;
  DailyModel? get dailyModel => _dailyModel;
 void getDailyData() async {
    final data = await DailyDataBase.intance.fetchOne(
      id: AppHelper.idFromDate(DateTime.now()),
    );
    _dailyModel = data;

    notifyListeners();
  }
}
