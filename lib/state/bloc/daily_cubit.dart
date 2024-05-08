import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_management/utils/helpers/app_helper.dart';
import 'package:shop_management/core/models/daily_model.dart';
import 'package:shop_management/core/database/databases/daily/daily_database.dart';

abstract class DailyState {}

class DailyInitial extends DailyState {}

class DailySuccess extends DailyState {
  final DailyModel? data;
  DailySuccess(this.data);
}

class DailyFailed extends DailyState {
  final Exception exception;
  DailyFailed(this.exception);
}

class DailyCubit extends Cubit<DailyState> {
  DailyCubit() : super(DailyInitial());

  getDailyData() async {
    try {
      // final data = await DailyDataBase.intance.fetchOne(
      //   id: AppHelper.idFromDate(DateTime.now()),
      // );
    final  data = DailyModel();
      print('dome');
      emit(DailySuccess(data));
      print('done');
    } on Exception catch (e) {
      emit(DailyFailed(e));
    }
  }
}
