import 'package:shop_management/core/models/base_model.dart';
class BaseDbListModel<T extends BaseModel>{
  final List<T> list;
  BaseDbListModel({required this.list});
}