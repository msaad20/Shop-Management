import 'package:isar/isar.dart';
import 'package:shop_management/core/database/adapters/base/base_isar_auto_adapter.dart';
import 'package:shop_management/core/database/isar_objects/daily_db_object.dart';
import 'package:shop_management/core/models/daily_model.dart';
import 'package:shop_management/core/types/sort_type.dart';
 
class DailyIsarAdapter extends BaseDailyAutoApapter {

  @override
  QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> buildQuery(
      {Map<String, dynamic>? params}) {
    int? year = params?['year'];
    int? month = params?['month'];
    int? day = params?['day'];
    int? sales = params?['sales'];
    int? expenses = params?['expenses'];
    String? query = params?['query'];
    SortType? sortBy = params?['sortBy'];

    QueryBuilder<DailyObject, DailyObject, QAfterFilterCondition> queryBuilder =
       
        isar.dailyObjects.filter().group((q) {
      final conditi = q.idIsNotNull();
      //FIXME: fix this
      if (year != null) conditi.and().expensesIsEmpty();
      return conditi;
    });

    return queryBuilder;
  }

  @override
  IsarCollection<DailyObject> get isarCollection => isar.dailyObjects;

  @override
  Future<List<DailyModel>> itemsTransformer(List<DailyObject> object,
      [Map<String, dynamic>? params]) async {
    List<DailyModel> docs = [];
    for (DailyObject item in object) {
      docs.add(
        objectTransformer(item, params),
      );
    }
    return docs;
  }

  @override
  DailyObject objectConstructor(DailyModel object,
      [Map<String, dynamic>? params]) {
    return DailyObject()
      ..expenses = expenseConstructor(object.expenses)
      ..dateModel = DailyDate.fromDateTime(object.dateTime)
      ..id = object.id
      ..totalExpenses = object.totalExpenses
      ..totalSales = object.totalSales;
  }

  @override
  DailyModel objectTransformer(DailyObject object,
      [Map<String, dynamic>? params]) {
    final List<DailyExpenses>? expenses = object.expenses;

    return DailyModel(
   totalSales:    object.totalSales,
   expenses:    expenseTransformer(object.expenses),
  totalExpenses:     object.totalExpenses,
    dateTime:   object.dateModel?.toDateTime(),
    id:   object.id,
    );
  }

  List<ExpenseModel> expenseTransformer(List<DailyExpenses>? object) {
    List<ExpenseModel> expenseModels = [];
    if (object != null) {
      for (DailyExpenses expense in object) {
        expenseModels.add(ExpenseModel(
        name:   expense.name,
   price:        expense.price,
        ));
      }
    }
    return expenseModels;
  }

  List<DailyExpenses> expenseConstructor(List<ExpenseModel>? model) {
    List<DailyExpenses> expenseObject = [];
    if (model != null) {
      for (ExpenseModel expense in model) {
        expenseObject.add(
          DailyExpenses()
            ..name = expense.name
            ..price = expense.price,
        );
      }
    }
    return expenseObject;
  }
}
