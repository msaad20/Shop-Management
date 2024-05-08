import 'package:get_it/get_it.dart';
import 'package:shop_management/state/bloc/daily_cubit.dart';

final GetIt sl = GetIt.I;

void setupLocator() {
sl.registerFactory<DailyCubit>(() => DailyCubit());
}
