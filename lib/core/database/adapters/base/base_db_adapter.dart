import 'package:shop_management/core/database/models/base_db_list_model.dart';
import 'package:shop_management/core/models/base_model.dart';

abstract class BaseDbAdapter<T extends BaseModel> {

  Future<BaseDbListModel<T>?> fetchAll({
    Map<String, dynamic>? params,
  });

  Future<T?> fetchOne({
    required int id,
    Map<String, dynamic>? params,
  });

  Future<T?> set({
    required T body,
    Map<String, dynamic> params = const {},
  });

  Future<T?> create({
    required T body,
    Map<String, dynamic> params = const {},
  });

  Future<T?> update({
    required int id,
    required T body,
    Map<String, dynamic> params = const {},
  });

  Future<T?> delete({
    required int id,
    Map<String, dynamic> params = const {},
  });
}
