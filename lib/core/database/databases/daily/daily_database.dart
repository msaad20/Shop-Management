import 'package:shop_management/core/database/adapters/base/base_db_adapter.dart';
import 'package:shop_management/core/database/adapters/daily_isar_adapter.dart';
import 'package:shop_management/core/database/databases/daily/base_daily_database.dart';
import 'package:shop_management/core/models/daily_model.dart';

class DailyDataBase extends BaseDailyDatabase{
  static DailyDataBase get intance => DailyDataBase._();
  DailyDataBase._();

  @override
  BaseDbAdapter<DailyModel> get adapter => DailyIsarAdapter();
}


