import 'package:isar/isar.dart';
part 'daily_db_object.g.dart';

@collection
class DailyObject {
  int? totalSales;
  List<DailyExpenses>? expenses;
  int? totalExpenses;
  DailyDate? dateModel;
  Id? id=Isar.autoIncrement;
}

@embedded
class DailyExpenses {
  String? name;
  int? price;
}

@embedded
class DailyDate {
  int? year = 2024;
  int? month;
  int? day;
  int? hour;
  int? minute;

  @ignore
  DateTime toDateTime() {
    return DateTime(
      year ?? 2024,
      month ?? 1,
      day ?? 1,
      hour ?? 0,
      minute ?? 0,
    );
  }

  @ignore
  static fromDateTime(DateTime? dateTime) {
    return DailyDate()
      ..day = dateTime?.day
      ..year = dateTime?.year
      ..month = dateTime?.month
      ..hour = dateTime?.hour
      ..minute = dateTime?.minute;
  }
}
