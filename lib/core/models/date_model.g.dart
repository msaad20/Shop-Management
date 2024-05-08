// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateModel _$DateModelFromJson(Map<String, dynamic> json) => DateModel(
      (json['year'] as num).toInt(),
      (json['month'] as num).toInt(),
      (json['day'] as num).toInt(),
      (json['hour'] as num).toInt(),
      (json['minute'] as num).toInt(),
    );

Map<String, dynamic> _$DateModelToJson(DateModel instance) => <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'hour': instance.hour,
      'minute': instance.minute,
    };
