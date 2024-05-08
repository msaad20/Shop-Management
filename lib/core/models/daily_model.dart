import 'package:json_annotation/json_annotation.dart';
import 'package:shop_management/core/models/base_model.dart';

part 'daily_model.g.dart';

@JsonSerializable()
class DailyModel extends BaseModel {
  final int? totalSales;
  final List<ExpenseModel>? expenses;
  final int? totalExpenses;
  final DateTime? dateTime;
  final int? id;
  DailyModel(
      {this.totalSales = 0,
      this.expenses,
      this.totalExpenses = 0,
      this.dateTime,
      this.id});
  factory DailyModel.fromJson(Map<String, dynamic> json) =>
      _$DailyModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DailyModelToJson(this);
}

@JsonSerializable()
class ExpenseModel extends BaseModel {
  final String? name;
  final int? price;
  ExpenseModel({
    this.name = '',
    this.price = 0,
  });
  factory ExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$ExpenseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExpenseModelToJson(this);
}
