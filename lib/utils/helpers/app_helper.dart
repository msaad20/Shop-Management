class AppHelper {
  static int idFromDate(DateTime date) {
    final result = '${date.year}${date.month}${date.day}';
    final intResult = int.parse(result);
    print('apphelper:: idFromDate: $intResult');
    return intResult;

  }
  

  AppHelper._internal();
}
