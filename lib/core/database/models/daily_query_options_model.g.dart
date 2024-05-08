// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_query_options_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyQueryOptionsModel _$DailyQueryOptionsModelFromJson(
        Map<String, dynamic> json) =>
    DailyQueryOptionsModel(
      sales: (json['sales'] as num?)?.toInt(),
      expenses: (json['expenses'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      month: (json['month'] as num?)?.toInt(),
      day: (json['day'] as num?)?.toInt(),
      query: json['query'] as String?,
      sortBy: $enumDecodeNullable(_$SortTypeEnumMap, json['sortBy']),
    );

Map<String, dynamic> _$DailyQueryOptionsModelToJson(
        DailyQueryOptionsModel instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'sales': instance.sales,
      'expenses': instance.expenses,
      'query': instance.query,
      'sortBy': _$SortTypeEnumMap[instance.sortBy],
    };

const _$SortTypeEnumMap = {
  SortType.newToOld: 'newToOld',
  SortType.oldToNew: 'oldToNew',
};
