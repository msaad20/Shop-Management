import 'package:shop_management/core/base/base_view_model.dart';
import 'package:shop_management/core/models/daily_model.dart';

class DailyEditorViewModel extends BaseViewModel {
  final List<ExpenseModel> _expenses = [];
  bool get showExpenses => _expenses.isEmpty;
  List<ExpenseModel> get expenses => _expenses;
   int _totalPrice=0;
  int get totalPrice=>_totalPrice;
  addExpense({required ExpenseModel expense}) {
    _expenses.add(expense);
    _totalPrice+=expense.price??0;
    notifyListeners();
  }

  removeExpense({required int index}) {
    _expenses.removeAt(index);
    notifyListeners();
  }
}
