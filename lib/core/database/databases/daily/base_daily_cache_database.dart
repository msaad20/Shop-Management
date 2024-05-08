import 'package:flutter/foundation.dart';
import 'package:shop_management/core/database/databases/base/base_database.dart';

import 'package:shop_management/core/database/databases/daily/daily_database.dart';
import 'package:shop_management/core/database/models/base_db_list_model.dart';
import 'package:shop_management/core/models/daily_model.dart';

abstract class BaseCacheDailyDatabase extends BaseDatabase<DailyModel> {
  // CACHE
  static Map<int, DailyModel?> stories = {};
  void deleteCache(
    int id, {
    required String debugSource,
  }) {
    if (kDebugMode) print("DELETE dailyCard: $id from: $debugSource");
    stories.remove(id);
  }

  void setCache(
    DailyModel dailyCard, {
    required String debugSource,
  }) {
    if (kDebugMode) print("SET dailyCard: ${dailyCard.id} from: $debugSource");
    stories[dailyCard.id!] = dailyCard;
  }

  void setCacheMany(
    List<DailyModel> newCards, {
    required String debugSource,
  }) {
    if (kDebugMode) print("SET stories: ${newCards.length} from: $debugSource");
    for (DailyModel dailyCard in newCards) {
      stories[dailyCard.id!] = dailyCard;
    }
  }

  Future<DailyModel?> fetchOneCache(int id) async {
    stories[id] ??= await DailyDataBase.intance.fetchOne(id:id);
    return stories[id];
  }

  ////////////////////////
  // OVERRIDE functions //
  ////////////////////////

  @override
  Future<DailyModel?> fetchOne({
    required int id,
    Map<String, dynamic>? params,
  }) async {
    DailyModel? result = await super.fetchOne(id: id, params: params);
    if (result != null) setCache(result, debugSource: "$runtimeType#fetchOne");
    return result;
  }

  @override
  Future<BaseDbListModel<DailyModel>?> fetchAll({
    Map<String, dynamic>? params,
  }) async {
    BaseDbListModel<DailyModel>? result = await super.fetchAll(params: params);
    List<DailyModel>? items = result?.list;
    if (items != null) setCacheMany(items.toList(), debugSource: "$runtimeType#fetchAll");
    return result;
  }

  @override
  Future<DailyModel?> set({
    required DailyModel body,
    Map<String, dynamic> params = const {},
  }) async {
    deleteCache(body.id!, debugSource: "$runtimeType#set");
    DailyModel? dailyCard = await super.set(body: body, params: params);
    if (dailyCard != null) setCache(dailyCard, debugSource: "$runtimeType#set");
    return dailyCard;
  }

  @override
  Future<DailyModel?> create({
    required DailyModel body,
    Map<String, dynamic> params = const {},
  }) async {
    deleteCache(body.id!, debugSource: "$runtimeType#create");
    DailyModel? dailyCard = await super.create(body: body, params: params);
    if (dailyCard != null) setCache(dailyCard, debugSource: "$runtimeType#create");
    return dailyCard;
  }

  @override
  Future<DailyModel?> delete({
    required int id,
    Map<String, dynamic> params = const {},
  }) {
    deleteCache(id, debugSource: "$runtimeType#delete");
    return super.delete(id: id, params: params);
  }

  @override
  Future<DailyModel?> update({
    required int id,
    required DailyModel body,
    Map<String, dynamic> params = const {},
  }) async {
    deleteCache(body.id!, debugSource: "$runtimeType#update");
    DailyModel? dailyCard = await super.update(id: id, body: body, params: params);
    if (dailyCard != null) setCache(dailyCard, debugSource: "$runtimeType#update");
    return dailyCard;
  }
}
