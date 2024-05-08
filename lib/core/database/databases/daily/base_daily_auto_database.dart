

import 'package:shop_management/core/database/databases/daily/base_daily_cache_database.dart';

import 'package:shop_management/core/database/models/base_db_list_model.dart';
import 'package:shop_management/core/models/daily_model.dart';

abstract class BaseDailyAutoDatabase extends BaseCacheDailyDatabase {
  ////////////////////////
  // OVERRIDE functions //
  ////////////////////////
  Future<DailyModel?> _create(int id) async {
    final result = await create(
        body: DailyModel(
      id: id,
      expenses: null,
      totalExpenses: 0,
      totalSales: 0,
      dateTime: DateTime.now(),
    ));
    return result;
  }

  @override
  Future<DailyModel?> fetchOne({
    required int id,
    Map<String, dynamic>? params,
  }) async {
    try {
      DailyModel? result = await super.fetchOne(id: id, params: params);
      if (result != null) {
        return result;
      } else {
        return _create(id);
      }
    } on Exception catch (e) {
      //FIXME: HANDLE IT BETTER

      return _create(id);
    }
  }
    @override
    Future<BaseDbListModel<DailyModel>?> fetchAll({
      Map<String, dynamic>? params,
    }) async {
      BaseDbListModel<DailyModel>? result =
          await super.fetchAll(params: params);
      List<DailyModel>? items = result?.list;

      return result;
    }
  }
