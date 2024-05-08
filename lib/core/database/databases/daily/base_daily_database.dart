import 'package:shop_management/core/database/databases/daily/base_daily_auto_database.dart';
import 'package:shop_management/core/database/databases/daily/base_daily_cache_database.dart';

import 'package:shop_management/core/models/daily_model.dart';

// DailyModel _constructdailyCardIsolate(Map<String, dynamic> json) {
//   return DailyModel.fromJson(json);
// }

abstract class BaseDailyDatabase extends BaseDailyAutoDatabase {
  @override
  String get tableName => "dailyCards";

  BaseDailyDatabase();

  // @override
  // Future<BaseDbListModel<DailyModel>?> itemsTransformer(Map<String, dynamic> json) async {
  //   return BaseDbListModel(
  //     list: await buildItemsList(json),

  //   );
  // }

  // @override
  // Future<DailyModel?> objectTransformer(Map<String, dynamic> json) async {
  //   return compute(_constructdailyCardIsolate, json);
  // }

  @override
  Future<void> onCRUD(DailyModel? object) async {
    //FIXME: here we can do a reload on crud
    // if (object?.year == null) return;

    // HomeView.reloadDocsCount();
  }

///FIXME:: MAke it functionable
  // int getDocsCount(int? year) {
  //   BaseDbAdapter dailyCardAdapter =
  //       adapter;
  //   return dailyCardAdapter.getDocsCount(year);
  // }


  Future<DailyModel?> deleteDocument(DailyModel dailyCard) async {
    return delete(
      id: dailyCard.id!,
      // params: {
      //   "type": dailyCard.type.name,
      //   "month": dailyCard.month,
      //   "year": dailyCard.year,
      //   "day": dailyCard.day,
      // },
    );
  }
  
}
