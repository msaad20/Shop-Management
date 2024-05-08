import 'package:easy_localization/easy_localization.dart';

String priceHelper({int? price=0}){
  final String prefix = tr('field.rs');
 String numString = price.toString();
  String result = '$prefix ';
  
  int len = numString.length;
  int commaIndex = len % 3;
  
  if (commaIndex == 0) commaIndex = 3;
  
  for (int i = 0; i < len; i++) {
    result += numString[i];
    commaIndex--;
    
    if (commaIndex == 0 && i != len - 1) {
      result += ',';
      commaIndex = 3;
    }
  }
  
  return result;

}