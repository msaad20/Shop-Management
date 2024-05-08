import 'package:shop_management/core/database/adapters/base/base_isar_adapter.dart';
import 'package:shop_management/core/database/isar_objects/daily_db_object.dart';
import 'package:shop_management/core/models/daily_model.dart';

abstract class BaseDailyAutoApapter
    extends BaseIsarAdapter<DailyObject, DailyModel> {
  @override
  Future<DailyModel?> fetchOne({
    required int id,
    Map<String, dynamic>? params,
  }) async {
    final data = await super.fetchOne(id: id, params: params);
    if (data == null) {
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
    return data;
  }
}
