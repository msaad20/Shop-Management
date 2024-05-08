import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:shop_management/core/types/sort_type.dart';

part 'daily_query_options_model.g.dart';

@CopyWith()
@JsonSerializable()
class DailyQueryOptionsModel {
  final int? year;
  final int? month;
  final int? day;
  final int? sales;
  final int? expenses;
  //final String? tag;
  //final PathType? type;
  //final bool? starred;
  final String? query;
  final SortType? sortBy;
  // final List<int>? selectedYears;
  // final List<int>? yearsRange;

  DailyQueryOptionsModel({
    this.sales,
    this.expenses,
    this.year,
    this.month,
    this.day,
    // this.tag,
    // this.starred = false,
    this.query,
    // this.type,
    // this.selectedYears,
    // this.yearsRange,
    this.sortBy,
  });

  String join() {
    final list = toJson()
        .entries
        .where((e) => e.value != null)
        .map((e) => "${e.key}:${e.value}");
    return list.join("|");
  }

  Map<String, dynamic> toJson() => _$DailyQueryOptionsModelToJson(this);
  factory DailyQueryOptionsModel.fromJson(Map<String, dynamic> json) =>
      _$DailyQueryOptionsModelFromJson(json);
}
