import 'package:shop_management/core/models/base_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'date_model.g.dart';

@JsonSerializable()
class DateModel extends BaseModel {
  final int year;
  final int month;
  final int day;
  final int hour;
  final int minute;
  DateModel(
    this.year,
    this.month,
    this.day,
    this.hour,
    this.minute,
  );
  @override
  String toString() => '$year-$month-$day-$hour-$minute';
  factory DateModel.fromJson(Map<String, dynamic> json) =>
      _$DateModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DateModelToJson(this);

  factory DateModel.today() {
    final today = DateTime.now();
    return DateModel(
      today.year,
      today.month,
      today.day,
      today.hour,
      today.minute,
    );
  }
}
