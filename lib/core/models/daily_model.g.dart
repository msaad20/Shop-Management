// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyModel _$DailyModelFromJson(Map<String, dynamic> json) => DailyModel(
      totalSales: (json['totalSales'] as num?)?.toInt() ?? 0,
      expenses: (json['expenses'] as List<dynamic>?)
          ?.map((e) => ExpenseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalExpenses: (json['totalExpenses'] as num?)?.toInt() ?? 0,
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DailyModelToJson(DailyModel instance) =>
    <String, dynamic>{
      'totalSales': instance.totalSales,
      'expenses': instance.expenses,
      'totalExpenses': instance.totalExpenses,
      'dateTime': instance.dateTime?.toIso8601String(),
      'id': instance.id,
    };

ExpenseModel _$ExpenseModelFromJson(Map<String, dynamic> json) => ExpenseModel(
      name: json['name'] as String? ?? '',
      price: (json['price'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ExpenseModelToJson(ExpenseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
    };
